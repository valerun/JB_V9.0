/* 
	Editor: http://www.visualmicro.com
	        visual micro and the arduino ide ignore this code during compilation. this code is automatically maintained by visualmicro, manual changes to this file will be overwritten
	        the contents of the Visual Micro sketch sub folder can be deleted prior to publishing a project
	        all non-arduino files created by visual micro and all visual studio project or solution files can be freely deleted and are not required to compile a sketch (do not delete your own code!).
	        note: debugger breakpoints are stored in '.sln' or '.asln' files, knowledge of last uploaded breakpoints is stored in the upload.vmps.xml file. Both files are required to continue a previous debug session without needing to compile and upload again
	
	Hardware: Arduino Pro or Pro Mini w/ ATmega328 (5V, 16 MHz), Platform=avr, Package=arduino
*/

#ifndef _VSARDUINO_H_
#define _VSARDUINO_H_
#define __AVR_ATmega328p__
#define __AVR_ATmega328P__
#define ARDUINO 158
#define ARDUINO_MAIN
#define __AVR__
#define __avr__
#define F_CPU 16000000L
#define __cplusplus
#define __inline__
#define __asm__(x)
#define __extension__
#define __ATTR_PURE__
#define __ATTR_CONST__
#define __inline__
#define __asm__ 
#define __volatile__

#define __builtin_va_list
#define __builtin_va_start
#define __builtin_va_end
#define __DOXYGEN__
#define __attribute__(x)
#define NOINLINE __attribute__((noinline))
#define prog_void
#define PGM_VOID_P int
            
typedef unsigned char byte;
extern "C" void __cxa_pure_virtual() {;}

//
//
void GFI_break();
void ResetGFI();
void setRelay(byte state);
void setPilot(int _duty);
void setOutC();
int getState();
float read_pV();
float read_V();
float read_C();
int getTemp();
void printErrorMsg(const __FlashStringHelper *fstr, const int del);
void sendWiFiMsg(char *str);
void sendButtonMsg(char button);
void sendWiFiMsg(const __FlashStringHelper *fstr, int dummy);
int isBtnPressed(int pin);
int timeToNextRun();
byte dayOfWeek();
byte hourOfDay();
byte minsOfHour();
byte limit(const byte value, const byte minimum, const byte maximum);
void getSavingsPerKWH(int gascost, int mpg, int ecost, int whpermile);
void delaySecs(int secs);
void wait(unsigned long secs);
void convertChar(char *bin, char *bout);

#include "C:\Program Files (x86)\Arduino\hardware\arduino\avr\cores\arduino\arduino.h"
#include "C:\Program Files (x86)\Arduino\hardware\arduino\avr\variants\eightanaloginputs\pins_arduino.h" 
#include "C:\Users\Yoan\Documents\GitHub\JB_V9.0\JB Firmware\JB_firmware_V8_9_1_R\JB_firmware_V8_9_1_R.ino"
#include "C:\Users\Yoan\Documents\GitHub\JB_V9.0\JB Firmware\JB_firmware_V8_9_1_R\EEPROM_VMcharger.h"
#endif
