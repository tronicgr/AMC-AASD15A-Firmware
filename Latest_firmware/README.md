### This is the latest firmware for AMC-AASD15A... (v2.26 fix8 - 2560 version only)

-- enc_2560_SH_AMC_AASD15A_v2_26_fix8_RGB (2560 chipset only)
--------------------------------------------------
- Improved Power Saving function that can
- 1. Power OFF and ON Vertical actuators, Power OFF only if parked to 0% 
- 2. Power OFF and ON Horizontal actuators
- 3. Adjustable timer for turning off the LCD and the power to the servos

- Added Option to adjust Backtrack of the motor upon calibration from home position. Allows to set the backtrack small enough to avoid having drops when power is turned off.
- Added option to skip Standby state and move the actuators directly to Park position upon finishing the motion tasks.
- Added more options in the Belt Tensioner section, where you can define either single or dual belt and the ports used, as well if the backtrack will be 0% or user defined.

- Added numerous automation and feedback regarding integration with Simhub, to automate start-stop of the whole platform, and even power off servos on exit or when the motion is idle. A list of the available option will appear on Simhub if supported by the firmware. The new automation allows for very smooth transitions between playing game, or pausing, or handling estop.

- Functionality display on this video:https://www.youtube.com/watch?v=YFQsrKTR2tM

- Download shortcut: 
[enc_2560_SH_AMC_AASD15A_v2_26_fix8_RGB.zip](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/enc_2560_SH_AMC_AASD15A_v2_26_fix8_RGB.zip)

  



# A good step by step guide can be found here: 
https://www.simracingstudio.com/forum/motion-profiles-actuator/thanos-firmware-update-guide


~
### Be aware there is firmware for two different size Atmega microcontrollers now, Atmega1280 and Atmega2560. If not sure which version you have please ask in Discord before proceeding updating your AMC controller: https://discord.gg/bx4PxYR

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo

### INPORTANT notice:
- After loading new firmware, please hold down the "EXIT" button on the panel and press and release the "RESET" button on the controller to restore default parameters. See how its done on this video: https://www.youtube.com/watch?v=g12Grq-1LBQ


### How to identify if you have 128k or 256k board:
Visually the two boards look identical, except they use different Microcontroller each.
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280vs2560_boards.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280vs2560_boards_zoom_markings.jpg)



### The AVRUBD utility is located on each firmware folder, see links below.


### Settings in AVRUBD for loading the fimware to older 128k Atmega boards:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option2.jpg)

The 128k devices use this firmware: [enc_1280_6dof_AMC_AASD15A_v2_26_beta_fix5_RGB.zip](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA1280_chip/enc_1280_6dof_AMC_AASD15A_v2_26_beta_fix5_RGB.zip)

The AVRUBD firmware update utility preset for 1280 chip: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA1280_chip/AVRUBD_%201280_Firmware_bootloader_Utility_52.zip



### Alternative settings in AVRUBD for loading the firmware to newer 256k Atmega boards:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option2.jpg)

The 256k devices use this firmware: [enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix7_RGB.zip](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix7_RGB.zip)

The AVRUBD firmware update utility preset for 2560 chip: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/AVRUBD_%202560_Firmware_bootloader_Utility_52.zip

Here is a video that shows the firmware update procedure for 2560 boards: https://www.youtube.com/watch?v=hrNW2Oc2yg8



