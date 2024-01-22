# If you are using SRS, here is a good place to start:
https://www.simracingstudio.com/forum/motion-profiles-actuator/actuator-setup-links


# AMC-AASD15A_Firmware
Firmware updates for the AMC-AASD15A

### NEW MANUAL v2.9 for the AMC-AASD15A with information for 4DOF+TL+Surge setup
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Manual-and-Datasheets/User_Manual_v2_9-AMC-AASD15A_4DOF%2BTL%2BSurge-SRS-Simtools.pdf


![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/IMG_20190518_080904_sm.jpg)

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo

### IMPORTANT: 
After loading the new firmware, hold down the 'EXIT' button on the Thanos controller. While continuing to hold down the 'EXIT' button, press and release the "RESET" button to restore the default parameters. Now release the 'EXIT' button. This is needed to remove any incorrectly stored values from the epprom from the previous firmware as sometimes these get updated too. See this video: https://www.youtube.com/watch?v=g12Grq-1LBQ


### AMC-AASD15A interface plugin for Simtools
You can find the Simtools2  Interface plugin here: 
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Simtools_interface_plugin


### You can use the AMC config tool to access and modify the parameters in the AMC-AASD15A:
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Thanos-utility/AMC-AASD_Config_tool

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Thanos-utility/AMC-AASD_Config_tool/AMC-AASD15A-config-tool.jpg)

### If transitioning from SFX100 software to use the AMC-AASD15A, please don't forget the extra parameters on the servo drives!!
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Manual-and-Datasheets/AASD-15A_parameters_for_SFX100_users_not_to_forget.jpg)

.

(the animation below is to show the RGB LCD, refer above for the latest firmware version)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/20201208_201316.gif)


-- enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix7_RGB.zip (2560 chipset only)
--------------------------------------------------
- Added increments of 1mm for setting more accurate stroke values for the actuators
  

-- enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix6_RGB.zip (2560 chipset only)
--------------------------------------------------
- Added physical pin outputs for the Spike Filter when activated, to allow hook up external monitoring hardware (LED, sound circuit, mechanical indication etc).
- Added option for scaled range for the double TL actuators 5 & 7, allowing separate range for front back, while keeping them centered.
- Fixed bug that added delay if the motion software stopped sending motion cues while the Spike Filter was active.


-- enc_XXXX_6dof_AMC_AASD15A_v2_26_beta_fix5_RGB.zip 
--------------------------------------------------
- Added manual buttons (or dual switch) control for adjusting Belt Tensioners based on AASD servos.
- Rewrite of the servo control engine for smoother and accurate change of direction. 
- Added manual calibration of the servos by holding EXIT+DOWN buttons at any time
- Minor fixes on the interface to correct refreshing and artifacts left on the LCD.
- Rotary actuators calculations and parameters were removed from the 1280 chip version firmware, to allow for program space.



-- enc_XXXX_6dof_AMC_AASD15A_v2_26_beta_fix0_RGB.zip 
--------------------------------------------------
- Added support for new AMC Config tool with more available options
- .
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Thanos-utility/AMC-AASD_Config_tool
- .
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Thanos-utility/AMC-AASD_Config_tool/AMC-AASD15A-config-tool.jpg)


-- enc_XXXX_6dof_AMC_AASD15A_v2_25_beta_fix0_RGB.zip 
--------------------------------------------------
- Added state machine for the LCD refresh to be performed only when needed.
- Will display the state of the servos STANDBY or PARK immediately.
- Improved the automated motion when not connected to the motion software.
- Fixed a bug where a timer failed to restore affecting the colors of the LCD during online motion.
- https://www.youtube.com/watch?v=kTXPci8b8pU



-- enc_6dof_AMC_AASD15A_v2_20_beta_fix1_RGB.zip 
--------------------------------------------------
- Improved command set for integration with SRS
- 

-- enc_6dof_AMC_AASD15A_v2_20_beta_fix0_RGB.zip 
--------------------------------------------------
- improved efficieny of LCD menu for easier navigation
- added security features and better integration with SRS
- clean up of old unused code and replacement of empty spaces
- check before save epprom parameters to reduce wear of the memory material


-- enc_6dof_AMC_AASD15A_v2_11_beta_fix6_RGB.zip 
--------------------------------------------------
- Added screen saver for the RGB color LCD models. It will turn off the backlight after 5 to 10 minutes (countdown timer used is not precice). It will light up again after any button is pressed or its connected to motion software on-line.
- Fixed bug affecting saving correct stroke on individual actuators if they have different leadscrew size.
- Fixed bug on actuator7 belt ratio that was saving value from actuator 6 instead.


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



-- enc_6dof_AMC_AASD15A_v2_10_beta_fix6.zip
--------------------------------------------------

- fixed issue with jump occuring if Force offline switch is used while online. The actuators now return to online position smoothly.
- Fixed the disable Auto park issue where all actuators where parking on Force Offline switch even the TL and Surge ones.
- Fixed issue where the online motion where not restoring from Force Offline mode when you were modifying parameters. The changes to the parameters are temporary now and you can save them as normal after you disconnect from Simtools or other motion software.
- Fixed an issue where the actuators where not calibrating if Force offline switch was activated on power on of the controller.
- Changed the order of appearance for the Spike Filter "Range" and "Level" so you won't have to go back to modify the level twice.


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
  -Removed RC-SERVO CODE.
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

### ------- Wiring E-stop Button Box on RJ45 connector, PCB v1.4 and after ----------
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/RJ45%20E-stop%20button%20box%20diagram.jpg)


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




### -------- Using older AMC1280USB controller with firmware for AMC-AASD15A ---------

```
You can use the older AMC1280USB but it will require some extra wiring and addition of some capacitors and resistors
```

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20servomotor%20connections%20schematic%20AASD-15A_small.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20wiring%20for%20AASD-15A_small.jpg)



