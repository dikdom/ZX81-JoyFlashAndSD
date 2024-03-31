'''
This is the flash ROM image generator program for the ZX81 32k RAM, Flash and Joy card.
You need to have a text list file containing the .p files (one in each line, check
the input template for description!)
Execute:
python ZX81exp-flash-builder.py YOUR-INPUT-FILE.FD

The output will be a .bin file, its name is the same as the input. Existing .bin files with
same name will be overwritten!

Header - 32 bytes (root directory)
  'ZX81-FlashHeader' (16 bytes, US-ASCII)
  number of entries  (2 bytes, big endian, including separators)
  address of the parent directory (3 bytes. 0xff in case of root directory)
  padding            (14 bytes)
Entries - NOE x 32 bytes
  entry type         (1 byte)
    1 - file
    2 - subdirectory
  file size             (2 bytes, big endian - 0xLL 0xHH)
  flash start position (3 bytes, little endian - 0xHH 0xMM 0xLL)
  entry text           (max 22 bytes, ZX81 charset; 20 bytes in case of subdirectory)
  0xff padding
Files
  Each .p file sequentially
  . . .
Header - 32 bytes (subdirectory #1)
  . . .
Entries
  . . .
Files
  . . .
  . . .
  
'''


import sys
import os.path
from os.path import exists, getsize
from pathlib import Path

ENTRY_TYPE_FILE = 1
ENTRY_TYPE_SUBDIRECTORY = 2
HEADER_STRING = "ZX81-FlashHeader"

fileCounter = 0

'''
Converts lowercase US-ASCII characters to ZX81 charset - if possible.
Nonexistent characters are converted to SPACE (0x00)
'''
def getZX81Chars(str):
    retVal = bytearray()
    for c in str:
        if ord(c)>=ord('a') and ord(c)<=ord('z') :
            retVal.append( ord(c) - ord('a') + 0x26)
            continue
        if ord(c)>=ord('0') and ord(c)<=ord('9') :
            retVal.append(ord(c)-ord('0') + 0x1C)
            continue

        match c:
            case ' ':
                retVal.append(0x00)
            case '$':
                retVal.append(0x0D)
            case ':':
                retVal.append(0x0E)
            case '?':
                retVal.append(0x0F)
            case '(':
                retVal.append(0x10)
            case ')':
                retVal.append(0x11)
            case '>':
                retVal.append(0x12)
            case '<':
                retVal.append(0x13)
            case '=':
                retVal.append(0x14)
            case '+':
                retVal.append(0x15)
            case '-':
                retVal.append(0x16)
            case '*':
                retVal.append(0x17)
            case '/':
                retVal.append(0x18)
            case ';':
                retVal.append(0x19)
            case ',':
                retVal.append(0x1A)
            case '.':
                retVal.append(0x1B)
            case _ :
                retVal.append(0x00)

    while len(retVal)<26 :
        retVal.append(0xFF)
    return retVal


def buildEntries(parsedNames, startFlashAddress):
    returnValue = bytearray()
    filePos = (len(parsedNames)+1) * 32
    flashDirEntries = []
    fileSizeSum = 0
    
    if startFlashAddress != 0 :
        returnValue += (ENTRY_TYPE_SUBDIRECTORY).to_bytes(1) + \
                        bytearray(5) + \
                        getZX81Chars('.. ->')
        filePos += 32
   
    for t in parsedNames:
        zx81DisplayString = getZX81Chars(t[2])
        fileType = t[0]
        if fileType == ENTRY_TYPE_FILE :
            fileSize = getsize(t[1])
        elif fileType == ENTRY_TYPE_SUBDIRECTORY :
            fileSize = 0
        returnValue += fileType.to_bytes(1) + \
                        fileSize.to_bytes(2, 'little') + \
                        (filePos + startFlashAddress).to_bytes(3, 'big') + \
                        zx81DisplayString
        filePos += fileSize
    return returnValue

def parseInputFile(inputFileName) :
    global fileCounter
    path = os.path.split(Path(inputFileName).relative_to('.')) [0]
    print("Processing: ", inputFileName)
    parsedNames = []
    with open(inputFileName) as inFile:
        lineCnt = 0
        for line in inFile.readlines():
            lineCnt += 1
            line = line.strip()
            if(line == "") :
                continue
            if(line.startswith('#')) :
                continue
            splits = line.split(';')
            for i in range(0, len(splits)) :
                splits[i] = splits[i].strip()
            if(len(splits)==2 and splits[1] != "") :
                caption=splits[1]
            elif splits[0].lower().endswith('.p') :
                caption = splits[0][:-2]
            elif splits[0].lower().endswith('.fd') :
                caption = splits[0][:-3]
            else :
                print('Not a valid line at #', lineCnt, ': ', line)
                continue
            if splits[0] == "":
                print('Not a valid line at #', lineCnt, ': ', line)
                continue
            elif splits[0].lower().endswith('.p') :
                entryType = ENTRY_TYPE_FILE
                fileCounter += 1
            elif splits[0].lower().endswith('.fd') :
                entryType = ENTRY_TYPE_SUBDIRECTORY
            if path != "" :
                fileName = path + os.sep + splits[0]
            else :
                fileName = splits[0]
            if not (exists(fileName) and Path(fileName).is_file()):
                print('File cannot be found or not a file: ', fileName)
                continue
            if printIncludedFiles and entryType == ENTRY_TYPE_FILE :
                print(splits[0], "(", getsize(fileName), ")")
            caption = caption.lower()
            if entryType == ENTRY_TYPE_FILE and len(caption)>22 :
                caption=caption[:22]
            if entryType == ENTRY_TYPE_SUBDIRECTORY :
                if len(caption)>19 :
                    caption=caption[:19]
                caption = caption + ' ->'
                
            parsedNames.append( (entryType, fileName, caption) )
    return parsedNames

def buildSubdirectoryBin(fileName, startFlashAddress) :
    names = parseInputFile(fileName)

    filePos = 0
    if startFlashAddress == 0 :
        flashHeader = bytearray(HEADER_STRING, 'us-ascii') + \
                    len(names).to_bytes(2, 'little') + \
                    (0xffffff).to_bytes(3, 'big') + \
                    bytearray(11)
    else :
        flashHeader = bytearray(HEADER_STRING, 'us-ascii') + \
                    (len(names)+1).to_bytes(2, 'little') + \
                    bytearray(14)
                  
    flashEntries = buildEntries(names, startFlashAddress)
    
    binContent = flashHeader + flashEntries
    for t in names:
        if t[0] == ENTRY_TYPE_SUBDIRECTORY :
            continue
        with open(t[1], 'rb') as pFile :
            binContent += pFile.read()
    
    for i in range(0, len(names)) :
        t = names[i]
        if t[0] == ENTRY_TYPE_SUBDIRECTORY :
            subdirBin = buildSubdirectoryBin(t[1], len(binContent) + startFlashAddress)
            subdirBin[35:38] = startFlashAddress.to_bytes(3, 'big')
            binContent[(i+1) * 32 + 3 : (i+1) * 32 + 6] = len(binContent).to_bytes(3, 'big')
            binContent += subdirBin
            
    return binContent

    outputFileName = Path(fileName).with_suffix('.bin')


    with open(outputFileName, 'wb') as outFile :
        outFile.write(flashHeader)
        outFile.write(flashEntries)
        for t in names:
            if t[0] == ENTRY_TYPE_SEPARATOR:
                continue
            with open(t[1], 'rb') as pFile :
                outFile.write(pFile.read())
                
        
    # flashPosition:4
    # fileSize:2
    # fName:23, including trailing 0x00



if (len(sys.argv) < 2) or (sys.argv[1] == "-h") or (sys.argv[1] == "--help" ) :
    print('No filename provided!')
    print('Please execute as:\n  python', sys.argv[0], '<input filename> [-printFiles]')
    exit(1)

printIncludedFiles = False
if(len(sys.argv) == 3 and sys.argv[2] == "-printFiles"):
    printIncludedFiles = True

fullBinContent = buildSubdirectoryBin(sys.argv[1], 0x0)
outputFileName = Path(sys.argv[1]).with_suffix('.bin')

with open(outputFileName, 'wb') as outFile :
    outFile.write(fullBinContent)

print("Number of included files:", fileCounter)