# AMC-AASD15A_Firmware
Firmware updates for the AMC-AASD15A

### NEW MANUAL v2.4 for the AMC-AASD15A with information for 4DOF+TL+Surge setup
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Manual-and-Datasheets/AMC-AASD15A_4DOF%2BTL%2BSurge-SRS-Simtools_manual_v2_4.pdf


![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/IMG_20190518_080904_sm.jpg)

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo


### AMC-AASD15A interface plugin for Simtools
You can find the Simtools Interface plugin here: 
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Simtools_interface_plugin


### You can use the AMC config tool to access and modify the parameters in the AMC-AASD15A:
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/AMC_Config_tool_1_2.zip

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Beta_Firmware/AMC-Config-tool-v1_2_AASD.jpg)



![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/20201208_201316.gif)


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix6_RGB.zip 
--------------------------------------------------
- Added screen saver for the RGB color LCD models. It will turn off the backlight after 5 to 10 minutes (countdown timer used is not precice). It will light up again after any button is pressed or its connected to motion software on-line.


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix5_RGB.zip 
--------------------------------------------------
- Separated standby speed from the spike filter so it can slowly enter or exit online mode.
- Allows now correct adjustment of the ESC speed during spike filter events, without interfering with Park and Standby motion speeds. 
- Added stealth LCD colors! To enable hold UP button and press reset until a message appears.
- Restore Default RGB colors by holding DOWN button and press reset button until the message appears.


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix4_RGB.zip 
--------------------------------------------------
- Fixed refresh issue when displaying "Wait...Parking.." on Pulse filter screen
- Changed the internal command set to be allowed changing the Spike Filter level values while online. It was requested by SRS motion software to allow different presets per game and per car etc.


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix3_RGB.zip 
--------------------------------------------------
- Changed the TL Spike filter, to follow the Disable Park setting correctly for various types of platforms
- Changed the appearance of Pulse Freq menu to also show the value of Filter Factor, which is now renamed to plain "Pulse Filter Crv" (short for Curve)
- Added in the display of Spike Filter degrees angle for rotary actuators to display over what degrees the spike filter will activate.


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix2_RGB.zip 
--------------------------------------------------
- Added controls on the LCD menu to adjust the secondary spike filter for TL and Surge axis so you can select different spike level activation values.
- Added internal command set allowing better SRS integration. 

See this video for the changes made: https://www.youtube.com/watch?v=DfGoHd0oDw4


-- enc_6dof_AMC_AASD15A_v2_10_beta_fix8_RGB-menufix.zip
--------------------------------------------------
- fixed issue with saving the Filter factor and Spike filter if the controller was not previously online since boot.
- added in the selection display for Spike filter the ability to show the spike filter level in mm distance of the actuator.

See this video for the changes made: https://www.youtube.com/watch?v=l9le4nq7fb0


-- enc_6dof_AMC_AASD15A_v2_10_beta_fix7_RGB-menufix.zip
--------------------------------------------------
- added support for RGB color LCDs.

https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Beta_Firmware/enc_6dof_AMC_AASD15A_v2_10_beta_fix7_RGB-menufix.zip


-- enc_6dof_AMC_AASD15A_v2_10_beta_fix6.zip
--------------------------------------------------

- fixed issue with jump occuring if Force offline switch is used while online. The actuators now return to online position smoothly.
- Fixed the disable Auto park issue where all actuators where parking on Force Offline switch even the TL and Surge ones.
- Fixed issue where the online motion where not restoring from Force Offline mode when you were modifying parameters. The changes to the parameters are temporary now and you can save them as normal after you disconnect from Simtools or other motion software.
- Fixed an issue where the actuators where not calibrating if Force offline switch was activated on power on of the controller.
- Changed the order of appearance for the Spike Filter "Range" and "Level" so you won't have to go back to modify the level twice.


AMC config tool v1.2 and AMC-AASD15A firmware v2.10 beta fix6:
--------------------------------------------------

- Download it and try it, but not before you update to the newest v2.10 beta fix6 firmware. Beware the v2.10 Fix6 firmware will restore default settings on the AMC. Make sure to take note of previous setting you used.

https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/AMC_Config_tool_1_2.zip

- small change from fix3, fix4 and fix5: fixed the jump on reconnects to simtools and proper switch to ONLINE, Use the v2.10 fix6 please.

- See how it operates here: https://www.youtube.com/watch?v=EQ3INaih13k

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/AMC-Config-tool-v1_2_AASD.jpg)



---------------------------------------------------------------------------------------------------------------------

### -- enc_6dof_AMC_AASD15A_v2_10_beta_fix2.zip

- Fixed the disable Auto park issue where all actuators where parking on Force Offline switch even the TL and Surge ones.
- Fixed issue where the online motion where not restoring from Force Offline mode when you were modifying parameters. The changes to the parameters are temporary now and you can save them as normal after you disconnect from Simtools or other motion software.
- Fixed an issue where the actuators where not calibrating if Force offline switch was activated on power on of the controller.
- Changed the order of appearance for the Spike Filter "Range" and "Level" so you won't have to go back to modify the level twice.

See detailed info about the changes on the video here: https://www.youtube.com/watch?v=OBPfGzyTCBM



---------------------------------------------------------------------------------------------------------------------

### -- enc_6dof_AMC_AASD15A_v2_10_beta_fix1.zip

- Spike filter turns on the Yellow indication LED now.
- Fixed issue where the platform would park all axis even TL and Surge. Set "Function of FSW" to "1.Hold position"



### ======= enc_6dof_AMC_AASD15A_v2_09 =======

release date: 03/5/2020:
- Added "Rotation Offset" parameter that allows custom degrees backtrack of the rotating actuators during calibration so they can clear away from the limit switch it the hardstop. This can be set to any value between 1-90 degrees angle. It no effect on the linear actuators backtrack of the motor that is set by default to a little less than half rotation of the motor.
- Added Rolling Average Filter that is set to run globally and it appear in the LCD menu with the name "Filter Factor". The Filter Factor value is located under the "Pulse Freq" menu option. The motors must be parked or powered off as there is safety that does not allow modification of the filter factor value otherwise. It will not allow modification when you operate the buttons on the panel, or being on online mode. You can disable the filter entirely by selecting value "0" for the Filter Factor parameter. There are 5 levels of filtering:
- 0 No Filter
- 1 Hard Filter
- 2 Semi-Hard Filter
- 3 Semi-Soft Filter
- 4 Soft-Filter
- 5 ...Molasses

- The jump when entering online mode was fixed. Also fixed the jump if you activated e-stop in power off mode... it will always make sure the actuators are in park before starting motion, either offline or online.
- The new firmware will allow you to turn off the LCD updates for motor position information (bars) while still allowing navigating the menu by switching ON the DIP#3.
- I added a "Hold position" option for the Force Offline switch, which will keep the actuators on standby position (50%) while the Force offline switch is activated. Otherwise if you want to manually switch between Park and Standby positions while the Force Offline switch is active, you can select the option "Park Motors".
- It has now has a fix for when using Traction Loss axis, it will calibrate the motor in park position and then will slowly move to 50% position. While changing the Filter Factor value it will also move the TL actuator to Park position and move it back after the setting.
- Added an option to optionally change the signal level of the S-ON output pin (Enable), as some servos require High level signal to be enabled (5v).
- Added spike filter that can be adjusted by three parameters: Level, Range and ON-OFF
- 1. Level: it defines the distance in data points that the input position have to exceed for the spike filter to kick in. This is absolute 16bit value 0-65535, default value 32767. If the spike filter kicks in too often, increase this value.
- 2. Range: parameter for the Spike Filter to better fine tune the stepping of the spike filter value for lower level values.
- 3. Enable or Disable the Spike Filter
- Improved the delay caused by the Rolling Average Filter and now the motion from park to standby and to online data should be considerably faster. Also added two stage positioning algorithm to move faster for large distances and slow down when near target for these artificial movements.
- Fixes the transition to online motion data if the Force-Offline switch is used, avoiding jumps or jolts in the motion.
- Fixed the position seek during spike filtering to to a range instead a point to allow catching up to real time motion data immediately after a crash.

The new Spike Filter works by detecting spikes in position data larger that the defined level (most likely crashes) and it will automatically activate the Force Offline mode, that places the actuators in seek position mode until all motors catch up with live motion data. So for the duration of the crash the motors will avoid doing any intense jolts and most likely the motion will come back on when the vehicle is standing still. It should work wonders in long duration crashes like when you have rollover down a bank for example...


Some related videos:

https://youtu.be/F55fNvJAfzQ

https://youtu.be/QQWbG6e95cs

https://youtu.be/trsNiGNrWPI

https://youtu.be/s8uSu6mrPy0

https://youtu.be/HPB0BXzEaAg


### ======= enc_6dof_AMC_AASD15A_v2_08 =======
```
release date: 01/22/2020:
-Added option for KLM input (e-stop) to either HOLD powered position or Kill power to the Motors
-Added option for FSW input (Force offline) to either Always Park or let user use park/standby button.
-Added Actuator type selection for Linear or Rotary type (gearbox reduction). The menus are showing new
    options fit for describing the gearbox like reduction Ratio, Steps of the motor and output Angle range
    as well the CW or CCW direction of the motor.

example calculation for gearbox:
 (500pulses / 360 ) * 180degrees = 250 Pulses
  250Pulses * (50:1 Reduction) = 12500 Pulses
*keep in mind that the max pulses buffer that AMC-AASD15A can use is 65535!

```
Video regarding the new options on firmware v2.08:
https://www.youtube.com/watch?v=varxAyA26nc

### ======= enc_6dof_AMC_AASD15A_v2_07 =======
```
release date: 10/08/2019:
  -Fixed the speed of blinking of the Standby LED to correspond the ButtonSpeed setting direction up.
  -Changed the indication LEDs to be OFF by default, enable with DIP Switch 2 --> ON
  -Fixed max stroke calculations depending on the leadscrew and ratio values to 
      prevent buffer overflow of the pulse engine. Table with max stroke values follows:
        
```
  Leadscrew | Ratio | Max Stroke
  ----------| ---------- | -----------
  4mm/rev| 1:1 | 580mm
  4mm/rev| 1:1.5 | 390mm
  4mm/rev| 1:2 | 290mm
  5mm/rev| 1:1 | 640mm
  5mm/rev| 1:1.5 | 430mm
  5mm/rev| 1:2 | 320mm
  10mm/rev| 1:1 | 1290mm
  10mm/rev| 1:1.5 | 860mm
  10mm/rev| 1:2 | 640mm
  25mm/rev| 1:1 | 2500mm
  25mm/rev| 1:1.5 | 1660mm
  25mm/rev| 1:2 | 1250mm  


### ======= enc_6dof_AMC_AASD15A_v2_06 =======
```
release date: 10/08/2019:
  -Added support for 2525 leadscrew (25mm/rev).
  -Added support for different reduction belt ratios (1:1, 1:1.5, 1:2)
  -Added support for Platform Check. Will Park active actuators if any of them fail.
     Selectable by Menu Entry ON or OFF.
  -Fixed delay timers for Park/Standby to be more accurate for the used number of axis.  
  -Fixed a bug saving stroke and direction of Servo7.
  -Attached the speed of blinking of the Standby LED on the ButtonSpeed setting.
```


### ======= enc_6dof_AMC_AASD15A_v2_05 =======
```
release date: 09/10/2019:
  -Added support for 1604 leadscrew (4mm/rev).
  -Fixed a small bug handling single set of parameters for all actuators.
```

### ======= enc_6dof_AMC_AASD15A_v2_04 =======
```
release date: 09/05/2019:
  -Added support for 7th servo.
  -Added outputs for Indication LEDS for Park/Standby/ForceOffline/E-STOP (disabled with DIP2). 
  -Added 6DOF + Rotation disable Park option to release the park function for 7th servo.
  -Fixed Timeout for Park and Standby to represent values closer to seconds.
  -Fixed the firmware to support the updated AMC Config Tool v1.1
```

### ======= enc_6dof_AMC_AASD15A_v2_03 =======
```
release date: 07/20/2019: 
  -Increased the Stroke setting range from 400mm to 650mm. 
  -1300mm stroke can be achieved using the 5mm/rev leadscrew setting on 1610 (10mm/rev) leadscrew actuator.
```


### ======= enc_6dof_AMC_AASD15A_v2_02 =======
```
release date: 06/24/2019: 
  -Fixed issue of servos not activate back correctly after E-Stop activated
  -Added selection in the KLM menu of NC or NO switch type to be used for E-stop
   Attention! If NC (normally closed) switch is used, wire any additional button in series!
```

### ======= enc_6dof_AMC_AASD15A_v2_01 =======
```
release date: 06/21/2019: 
  -Added Actuator motion test that is activated when DIP1=OFF DIP4=ON, 
  Motion test speed is adjusted by the encoder knob
```

### ======= enc_6dof_AMC_AASD15A_v2_00 =======
```
release date: 06/17/2019: 
-Provides access to parameters via AMC Config utility
```


## ======= enc_6dof_AMC-AASD15A_v1.0_rev1g ======= 
```
release date: 6/8/2019: 
  -Fixed the emergency e-stop function. It will disable the servos completely.
    To remedy any position drift, the motors will recalibrate if e-stop is released
    There are two options for e-stop defined by KLM setting in LCD menu.
    One option is to combine Park/Standby button with the delayed e-stop.
    The second option is to immediately disable (kill) the servos.
```

### ======= enc_6dof_AMC-AASD15A_v1.0_rev1f ======= 
```
release date: 6/3/2019: 
  -Changed the stroke values to appear as millimiters instead of centimeters
```


### ======= enc_6dof_AMC-AASD15A_v1.0_rev1e ======= 
```
release date: 6/2/2019: 
  -Fixed issue with calibration correct inline/foldback per individual actuator
  -Fixed bug kept same stroke for all actuators in individual setting
  ----MANDATORY UPGRADE to this firmware please!!!
```



### ======= enc_6dof_AMC-AASD15A_v1.0_rev1d ======= 
```
release date: 5/30/2019: 
  -Fixed issue with using correct inline foldback parameters per individual actuator
  -Fixed bug that prevented re-calibration of the actuator if reconnected for actuators 2,3,4,5,6
```

### ======= enc_6dof_AMC-AASD15A_v1.0_rev1c ======= 
```
release date: 5/26/2019: 
  -Fixed issue with proper activation on new boards
  -Fixed bugs in selecting individual parameters for each actuator
```

### ======= enc_6dof_AMC-AASD15A_v1.0_rev1b ======= 
```
release date: 5/24/2019: 
  -Set number of motors
  -Set Park and Standby position, speed and timeouts.
  -Set actuator Stroke in cm
  -Set Screw Lead pitch (5 for 250mm/s or 10 for 500mm/s)
  -Set Inline or Backfold configuration
  -Set manual move test buttons speed (variable depending on the number of motors)
```


### ------------------- Wiring E-stop Buttons and switches - KLM option1 -------------
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC-AASD15A%20park-standby-emergency-force-offline%20diagram.jpg)

### ------------------- Wiring E-stop switch - KLM option2 -------------
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC-AASD15A%20emergency%20e-stop%20diagram.jpg)


### ------------------- Wiring DB25 female connector on Servo7-aux pins -------------
See the videos for details on wiring

https://www.youtube.com/watch?v=CT7M-8LCCwc

https://www.youtube.com/watch?v=pVbQSvhRTq4

https://www.youtube.com/watch?v=gEhakHadHmc

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC-AASD-15A_Servo7-aux_connections_schematic_sm.jpg)


### ------------------- Wiring indication LEDs on AMC-AASD15A -------------
```
Meaning of LED indications depending on the state of the controller:
Green ------------->	Motors online
Blinking Yellow --->	Standby
Yellow ------------>	Parked
Only Red ---------->	E-Stop 
Blinking Red ------>	Force offline
Red + Yellow ------>	Force offline and parked
```
Simple 3.7v LEDs:

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Indication%20LEDs%20for%20AMC-AASD15A.jpg)

12v or higher voltage LEDS:

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/higher_voltage_Indication_LEDs_for_AMC-AASD-15A.jpg)

Mosfet Driver link: https://www.amazon.com/dp/B07NWD8W26/


### ---Programmers information---
```
x-sim:
Make sure to set the axis to 16bit resolution, Binary
On the USO set the BAUD speed to 250000 , 8 , NO , 1
Then the dataformat for axisinformations is:
~255~~255~~a01~~a02~~a03~~a04~~a05~~A06~~0~~0~~10~~13~

Generic data format information:
The data string is 20 bytes long total.
0xFF 0xFF b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16  LF CR

0xFF 0xFF - start of data identifier for the receiving micro controller
byte1 - 8 bit binary number giving act1 demand MSB 
byte2 - 8 bit binary number giving act1 demand LSB         
byte3 - 8 bit binary number giving act2 demand MSB
byte4 - 8 bit binary number giving act2 demand LSB
byte5 - 8 bit binary number giving act3 demand MSB
byte6 - 8 bit binary number giving act3 demand LSB 
byte7 - 8 bit binary number giving act4 demand MSB
byte8 - 8 bit binary number giving act4 demand LSB 
byte9 - 8 bit binary number giving act5 demand MSB 
byte10 - 8 bit binary number giving act5 demand LSB 
byte11 - 8 bit binary number giving act6 demand MSB 
byte12 - 8 bit binary number giving act6 demand LSB 
byte13 - 8 bit binary number giving act7 demand MSB 
byte14 - 8 bit binary number giving act7 demand LSB 
byte15 - 8 bit binary number giving act8 demand MSB 
byte16 - 8 bit binary number giving act8 demand LSB 
LF   - Line Feed character
CR  - Carriage Return character

I add the two bytes to form a 16-bit value (for 0 to 65535 range, with 32512 mid position) like this:
act1word = act1high
Shift act1word , Left , 8bits
act1word = act1word + act1low

where 
act1word is word type (65535)
act1high is byte type
act1low is byte type


---Example of data to send for 4 Axis (Must include 0 values for not used axis):
    1 0xFF  ID
    2 0xFF  ID
    3 0x7F  AXIS1 MSB
    4 0x0F  AXIS1 LSB
    5 0x7F  AXIS2 MSB
    6 0x0F  AXIS2 LSB
    7 0x7F  AXIS3 MSB
    8 0x0F  AXIS3 LSB   
    9 0x7F  AXIS4 MSB  
    10 0x0F  AXIS4 LSB  
    11 0x00  AXIS5 MSB  
    12 0x00  AXIS5 LSB  
    13 0x00  AXIS6 MSB  
    14 0x00  AXIS6 LSB  
    15 0x00  AXIS7 MSB  
    16 0x00  AXIS7 LSB  
    17 0x00  AXIS8 MSB  
    18 0x00  AXIS8 LSB
    19 0x0A  LF
    20 0x0D  CR     


-----Simplified example code for sending axis data (for arduino):
int outputValue0 = 0;        // value output
int outputValue1 = 0;        // value output
int outputValue2 = 0;        // value output
int outputValue3 = 0;        // value output
int outputValue4 = 0;        // value output
int outputValue5 = 0;        // value output
int outputValue6 = 0;        // value output
int outputValue7 = 0;        // value output
byte buf0[2];
byte buf1[2];
byte buf2[2];
byte buf3[2];
byte buf4[2];
byte buf5[2];
byte buf6[2];
byte buf7[2];
byte ID[2];
byte endstring[2];
void setup() {
  Serial.begin(250000);
}
void loop() {
  // ID AXIS1 AXIS2 AXIS3 AXIS4 AXIS5 AXIS6 AXIS7 AXIS8 LF/CR
  // - The ID is byte values 0xFF + 0xFF
  // - Each Axis is 16bit wide.
  // - LF+CR is required in the end (0x0A + 0x0D)
  // change the analog out value:
  ID[0] = 255;
  ID[1] = 255;
  buf0[1] = outputValue0 & 255;
  buf0[0] = (outputValue0 >> 8) & 255;
  buf1[1] = outputValue1 & 255;
  buf1[0] = (outputValue1 >> 8) & 255;
  buf2[1] = outputValue2 & 255;
  buf2[0] = (outputValue2 >> 8) & 255;
  buf3[1] = outputValue3 & 255;
  buf3[0] = (outputValue3 >> 8) & 255;
  buf4[1] = outputValue4 & 255;
  buf4[0] = (outputValue4 >> 8) & 255;
  buf5[1] = outputValue5 & 255;
  buf5[0] = (outputValue5 >> 8) & 255;
  buf6[1] = outputValue6 & 255;
  buf6[0] = (outputValue6 >> 8) & 255;
  buf7[1] = outputValue7 & 255;
  buf7[0] = (outputValue7 >> 8) & 255;
  endstring[0] = 10; //LF
  endstring[1] = 13; //CR
  Serial.write(ID, sizeof(ID));
  Serial.write(buf0, sizeof(buf0));
  Serial.write(buf1, sizeof(buf1));
  Serial.write(buf2, sizeof(buf2));
  Serial.write(buf3, sizeof(buf3));
  Serial.write(buf4, sizeof(buf4));
  Serial.write(buf5, sizeof(buf5));
  Serial.write(buf6, sizeof(buf5));
  Serial.write(buf7, sizeof(buf5));
  Serial.write(endstring, sizeof(endstring));
  delay(2);   // wait 2 milliseconds before the next loop
}




```

### ---List of commands--- The parameters can be changed via simple terminal (250000 bps)

Command Number | Display Parameter | Save Parameter
------------| ------------ | -------------
CMD01 |Motornumber: | spv012-spv018
CMD04 |Park Position: | spv04001-spv04254
CMD05 |Park Move Speed: | spv05001-spv05100
CMD06 |Park Move Timeout: | spv0601-spv0690
CMD07 |Standby Position: | spv07010-spv07245
CMD08 |Standby Speed: | spv08000-spv08100
CMD09 |Standby Timeout: | spv0901-spv0990
CMD10 |Disable park type: | spv111-spv115
CMD13 |Actuator Limits: | spv1300-spv1350
CMD14 |Kill switch mode: | spv141-spv142
CMD15 |Spike Range: | spv15001-spv15254
CMD16 |Spike Level: | spv16001-spv16254
CMD17 |Spike 1=On, 2=Off: | spv171-spv172
CMD18 |TL Spike Level: | spv18001-spv18254
CMD19 |TL Spike 1=On, 2=Off: | spv191-spv192
CMD20 |Filter Factor 0-5: | spv201-spv205
CMD44 |Display all parameters 
CMD45 |Print this help page 
CMD55 |Print delimited parameter list for simtools
CMD56 |Print delimited parameter list for SRS
spv45 |Saves all parameters at once
RQM |  Displays model,revision and number of motors
Park | Parks the actuators if in standby mode

```
The CMD$$ displays each parameter, and spv$$### saves each parameter with the value indicated. 
To actually store the parameters in the flash memory you need to send "spv45" to save all 
parameters at once. The "$$" on the spv is the command number, and the "###" is the value, 
Some parameters have single digit value, some two digit value and some 3 digit value. 
All values are characters!

Here is a list of the default parameters values you should get when you issue the CMD44 command
(if not like this, you may reset the default parameters via button combination)

01.Motornumber 2-8: 4
04.Park Position 0-254: 1
05.Park_Move_Speed 1-100%: 11
06.Park_Move_Timeout 1-90: 5
07.Standby Position 10-245: 127
08.Standby Speed 0-100%: 24
09.Standby Timeout 1-90: 5
10.Disable park type 1-5: 1
13.Actuator Limits 0-50%: 1
14.Kill switch mode 1-2: 1

CMD55 returns the following numeric values separated by colon ( : ) punctuation mark for Simtools:
"data:" <Motornumber> ":" <Parkposition> ":" <Parkmovespeed> ":" <Parkmovetimeout> ":" <StandbyPosition> ":" <StandbySpeed> ":"<StandbyTimeout> ":" <Disableparktype> ":" <ActuatorLimits> ":" <Killswitchmode> ":" <Firmwareversion> ":" <AMCModel>

CMD56 returns the following numeric values separated by colon ( : ) punctuation mark for SRS:
"dataSRS:" <Firmwareversion> ":" <Betaversion> ":" <AMCModel> ":" <Axis_Number> ":" <Filter_factor> ":" <Spike_range> ":" <Spike_factor> ":" <Spike_filter_en> ":" <Stroke_cm> ":" <Spike_factor_TL> ":" <Spike_filter_en_TL> ":" <Disableparktype> ":"

            

```



### -------- Using older AMC1280USB controller with firmware for AMC-AASD15A ---------

```
You can use the older AMC1280USB but it will require some extra wiring and addition of some capacitors and resistors
```

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20servomotor%20connections%20schematic%20AASD-15A_small.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20wiring%20for%20AASD-15A_small.jpg)



