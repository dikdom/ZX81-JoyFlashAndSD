# ZX81-JoyFlashAndSD
## What is it
This is a low cost multi-feature expansion cart solution for the ZX81 computer. This is a 
- 32k SRAM memory expansion
- standard CURSOR or kempston joy port
- flash based program storage from where one-file games and demos can be loaded lightning fast. The cart supports the W25Q family of I2C flash chips (ranging from 2MB to 16MB) with a directory like structure.
- micro SD based program storage from where one-file games and demos can be loaded lightning fast. The SD card must be formatted to FAT16 or FAT32 and shall have only one partition
- reset button
- green and yellow LED light at the back of your ZX81 computer!

## Building the cart
The cart can be fully reproduced with the provided files: gerber files for the PCB, BOM and placement files for assembly (well, partly, as half of the components are TH kind), firmware for the EEPROM, that is executed by the ZX81 and one possible content for the flash IC (with 1.8MB programs). And a python utility to build you own flash content (which then must be burnt to the flash chip using your own flash programmer - the cart itself doesn't provide solution for doing that).

The edge connector, the EEPROM (W27C512), the SRAM (HM62256) and the GAL chips (GAL22v10 and GAL20v8) are sourced from mainly secondhand stores from Aliexpress. This makes it cheap but you should order some extra because of the non-zero failure rate of those stores (ok, the edge connector is an exception, they are brand new, but still, a lot more cheaper than buying them in the EU...).

Edge connector: I could not find 2x23, 2.54mm, open sided PCB edge connector so I ordered the 2x25, 2.54mm, closed side PCB edge connectors and cut the two sides to make it 2x23... This is a tedious and messy process, I warned you. I planned and printed a notch in the cadr edge connector. This way the cart cannot plugged in incorrectly. You may print it yourself and use it or... simply pull out those pins from the connector and glue in some spacer that makes it impossible to plug in incorrectly to the machine. This is important, don't trust your eye or feelings. The spacer/notch must be there.

I have ordered rev3 (20pcs) and rev4 (25pcs) carts from JLCPCB site. They worked most of the time fine, but I found issues with the SD card slot soldering. You have to test each of your carts and in case the SD card is not recognized (the firmware first checks if the CARD-IN signal is on GND), then you should reflow/resolder the pins of the slot. Or, you may use other PCB manufacturer...

Once your cart is ready you have to write the chips. You must have an EEPROM burner that supports W27C512. You must have a GAL burner (GAL22v10 and GAL20v8 or ATF22v10 or ATF20v8). You must have a flash burner that supports the W25Q.. series of flash ICs. Mine is TL866CS, which supports them all in one.

ATF vs GAL: ATF should work, but I haven't tried it.

## Jumpers
On the rev4 cart there are two places where jumpers could be installed. 

The first header, located on the left to the joy connector is the joy port selection. Shorting this would make the joy port is visible as a kempston joy. As it turned out virtually no games use kempston joy on ZX81 so I rarely populate it. There are a few ones (now) but the developer asked me not to include his games in the flash collection. If anyone wants to play with his games, they are available for download (they're free). Use the latest one.

The other jumper has its label. It is the ZX81+38 enablement jumper. The ZX81+38 clone machine doesn't have its own +9V output on the edge connector, so the cart gets its power directly from the machine's 5V rail. This is hardly a good idea on the stock ZX81 as its original PSU with is a 700mA, 9V PSU would be on its edge with this cart. So. Use this jumper only in case of ZX81+38 when there is no at least 100mA, +9V power output on its edge connector. In case you're putting the cart back to your stock ZX81, don't forget to remove the jumper!!

## Using the cart
Turn off your ZX81, plug in the cart without SD card, turn on the computer. On the screen you should be able to see a nice menu, saying this cart supports a lot of things, like a large flash chip (check lower right corner), SD card, joystick, 32k memory expansion. You can navigate in the file list using the CURSOR keys or - if you have a joystick plugged-in - you may use your joystick as well.

UP and DOWN moves the selection with one (up and down). LEFT and RIGHT causes paging back or forth. If you hit '0' (or joy fire) on a sub-directory the cart will enter that directory and displays its content. If you select a file with .p extension the cart tries to load it.

Most of the time the files are autostarted but if not, a prompt can be visible. Then, you have to enter the 'R' (RUN) and hit NEW LINE. Thath will do...

It is also possible to exit from the menu to BASIC by pressing the '1' key. In this case the TOP is initialized to have ~32k free RAM. Please be warned that the cart is not capable of storing files, you must use your tape or ... fix the code and make it happen! The source of the firmware is available, you are welcome to implement the feature!

In case you turn on or reset the ZX81 machine with an SD card in the SD slot, then the cart will first init the SD card then load the root directory content and finally it will display it, just like in the flash case. This is a slower procedure, displaying a ~20 entry directory would take around 10-20 sec. The navigation and program loading is the same as previously with the flash storage.

Pressing the 'C' will display the credits. The SD handling routines are mainly from the [Z88DK](https://github.com/z88dk) development environment and the FF library is based on feilipu's [ff](https://github.com/feilipu/z88dk-libraries/ff) sources. I compiled them using the z88dk, grabbed the generated assembly source and customized to the cart's needs. It wasn't as easy as it sounds but still, the main work lays in feilipu and z88dk team. A big thank you goes there!

All the remaining development: hardware and software are made by myself using JLC's EasyEDA, notepad++ and sjasm.



I hope you will enjoy using my cart, have fun!
