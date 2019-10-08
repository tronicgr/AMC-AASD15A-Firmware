# AMC-AASD15A_Firmware
Firmware updates for the AMC-AASD15A

### NEW MANUAL v2.1 for the AMC-AASD15A with information for 4DOF+TL setup
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC-AASD15A_%204DOF%2BTL-Simtools_manual_v2_1.pdf


![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/IMG_20190518_080904_sm.jpg)

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo


### AMC-AASD15A interface plugin for Simtools
You can find the Simtools Interface plugin here: 
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Simtools_interface_plugin


### You can use the AMC config tool to access and modify the parameters in the AMC-AASD15A:
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_Config_Tool_1_1.zip

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_config_AASD.jpg)


### ======= enc_6dof_AMC_AASD15A_v2_07 =======
```
release date: 10/08/2019:
  -Fixed max stroke calculations depending on the leadscrew and ratio values to prevent buffer overflow of the pulse engine.  
  -Fixed the speed of blinking of the Standby LED to correspond the ButtonSpeed setting direction up.
  -Changed the LEDs to be OFF by default, enable with DIP Switch 2 --> ON
```

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



### ------------------- Using older AMC1280USB controller-------------

```
You can use the older AMC1280USB but it will require some extra wiring and addition of some capacitors and resistors
```

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20servomotor%20connections%20schematic%20AASD-15A_small.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20wiring%20for%20AASD-15A_small.jpg)



