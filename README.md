# AMC-AASD15A_Firmware
Firmware updates for the AMC-AASD15A

### NEW MANUAL v2.2 for the AMC-AASD15A with information for 4DOF+TL setup
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Manual-and-Datasheets/AMC-AASD15A_4DOF%2BTL-Simtools_manual_v2_2.pdf


![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/IMG_20190518_080904_sm.jpg)

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo


### AMC-AASD15A interface plugin for Simtools
You can find the Simtools Interface plugin here: 
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Simtools_interface_plugin


### You can use the AMC config tool to access and modify the parameters in the AMC-AASD15A:
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_Config_Tool_1_1.zip

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_config_AASD.jpg)


### ======= enc_6dof_AMC_AASD15A_v2_08 =======
```
release date: 01/22/2020:
-Added option for KLM input (e-stop) to either HOLD powered position or Kill power to the Motors
-Added option for FSW input (Force offline) to either Always Park or let user use park/standby button.
-Added Actuator type selection for Linear or Rotary type (gearbox reduction). The menus are showing new
    options fit for describing the gearbox like reduction ratio, Steps of the motor and output angle range needed.

example calculation for gearbox:
 (500pulses / 360 ) * 180degrees = 250 Pulses
  250Pulses * (50:1 Reduction) = 12500 Pulses
*keep in mind that the max pulses buffer that AMC-AASD15A can use is 65535!

```

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

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Indication%20LEDs%20for%20AMC-AASD15A.jpg)


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
    6 0x0F  AXIS2LSB
    7 0x7F  AXIS3MSB
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
CMD44 |Display all parameters 
CMD45 |Print this help page 
CMD55 |Print delimited parameter list for simtools
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

CMD55 returns the following numeric values separated by colon ( : ) punctuation mark:
"data:" <Motornumber> ":" <Parkposition> ":" <Parkmovespeed> ":" <Parkmovetimeout> ":" <StandbyPosition> ":" <StandbySpeed> ":"<StandbyTimeout> ":" <Disableparktype> ":" <ActuatorLimits> ":" <Killswitchmode> ":" <Firmwareversion> ":" <AMCModel>

```



### -------- Using older AMC1280USB controller with firmware for AMC-AASD15A ---------

```
You can use the older AMC1280USB but it will require some extra wiring and addition of some capacitors and resistors
```

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20servomotor%20connections%20schematic%20AASD-15A_small.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20wiring%20for%20AASD-15A_small.jpg)



