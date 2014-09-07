#!/bin/bash

cd /home/pi/Desktop
echo working > Please\ Wait!
mkdir /home/pi/JB/temp
cd /home/pi/JB/temp
wget http://emotorwerks.com/JuiceBox_Public/98\ -\ Hex/firmware_8.9.hex
#wget wget -r --no-parent --reject "index.html*" http://emotorwerks.com/JuiceBox_Public/8.9/50%20-%20Firmware/8.9.1/libs/
#wget -r -nH --cut-dirs=2 --no-parent -e robots=off --reject="index.html*" http://emotorwerks.com/JuiceBox_Public/8.9/50%20-%20Firmware/8.9.1/libs/
#cd /home/pi/ftdiUpdate
#mkdir lib
#cp -r temp/emotorwerks.com/JuiceBox_Public/8.9/50\ -\ Firmware/8.9.1/libs/* lib
#cd /home/pi/ftdiUpdate
#mkdir src
#cd src
#mkdir JB_firmware_V8_9_1
#cd JB_firmware_V8_9_1
#wget http://emotorwerks.com/JuiceBox_Public/8.9/50%20-%20Firmware/8.9.1/JB_firmware_V8_9_1/EEPROM_VMcharger.h
#wget http://emotorwerks.com/JuiceBox_Public/8.9/50%20-%20Firmware/8.9.1/JB_firmware_V8_9_1/JB_firmware_V8_9_1.ino
#wget http://emotorwerks.com/JuiceBox_Public/8.9/50%20-%20Firmware/8.9.1/libs
#cd /home/pi/ftdiUpdate
#ino build -m pro5v328
#sudo ino upload -m pro5v328
avrdude -p atmega328p -c arduino -P /dev/ttyUSB0 -b 57600 -D -U flash:w:firmware_8.9.hex:i
cd /home/pi/Desktop
rm -r /home/pi/JB/temp
rm Please\ Wait!
