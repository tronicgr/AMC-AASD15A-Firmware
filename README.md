# AMC-AASD15A_Firmware
Firmware updates for the AMC-AASD15A


![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/IMG_20190518_080904_sm.jpg)

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo


### AMC-AASD15A interface plugin for Simtools
You can find the Simtools Interface plugin here: 
https://github.com/tronicgr/AMC-AASD15A-Firmware/tree/master/Simtools_interface_plugin


### You can use the AMC config tool to access and modify the parameters in the AMC-AASD15A:
https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_Config_Tool.zip

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Simtools_interface_plugin/AMC_config_AASD.jpg)


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



### ------------------- Using older AMC1280USB controller-------------

```
You can use the older AMC1280USB but it will require some extra wiring and addition of some capacitors and resistors
```

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20servomotor%20connections%20schematic%20AASD-15A_small.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/AMC1280USB%20wiring%20for%20AASD-15A_small.jpg)



