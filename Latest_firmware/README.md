### This is the latest firmware for AMC-AASD15A... (v2.26 fix6 - 2560 version only)


-- enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix6_RGB.zip 
--------------------------------------------------
- Added physical pin outputs for the Spike Filter when activated, to allow hook up external monitoring hardware (LED, sound circuit, mechanical indication etc).
- Added option for scaled range for the double TL actuators 5 & 7, allowing seperate range for front back, while keeping them centered.
- Fixed bug that added delay if the motion software stopped sending motion cues while the Spike Filter was active.

https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix6_RGB.zip





# A good step by step guide can be found here: 
https://www.simracingstudio.com/forum/motion-profiles-actuator/thanos-firmware-update-guide


~
### Be aware there is firmware for two different size Atmega microcontrollers now, Atmega1280 and Atmega2560. If not sure which version you have please ask in Discord before proceeding updating your AMC controller: https://discord.gg/bx4PxYR

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo

### INPORTANT notice:
- After loading new firmware, please hold down the "EXIT" button on the panel and press and release the "RESET" button on the controller to restore default parameters. See how its done on this video: https://www.youtube.com/watch?v=g12Grq-1LBQ


### How to identify if you have 128k or 256k board:
You can turn off the DIP switch #1 and reset the board. It should display an additional "2560" on the LCD if you have the 256k board:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560_firm_LCD.jpg)
Otherwise the 128k boards with firmware v2.11 fix5 or older will display this on the LCD:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280_firm_LCD.jpg)


Visually the two boards look identical, except they use different Microcontroller each.
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280vs2560_boards.jpg)

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280vs2560_boards_zoom_markings.jpg)



### The AVRUBD utility is located on each firmware folder, see links below.


### Settings in AVRUBD for loading the fimware to older 128k Atmega boards:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option2.jpg)

The 128k devices use this firmware: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA1280_chip/enc_1280_6dof_AMC_AASD15A_v2_26_beta_fix5_RGB.zip

The AVRUBD firmware update utility preset for 1280 chip: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA1280_chip/AVRUBD_%201280_Firmware_bootloader_Utility_52.zip



### Alternative settings in AVRUBD for loading the firmware to newer 256k Atmega boards:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option2.jpg)

The 256k devices use this firmware: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/enc_2560_6dof_AMC_AASD15A_v2_26_beta_fix5_RGB.zip

The AVRUBD firmware update utility preset for 2560 chip: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/MEGA2560_chip/AVRUBD_%202560_Firmware_bootloader_Utility_52.zip

Here is a video that shows the firmware update procedure for 2560 boards: https://www.youtube.com/watch?v=hrNW2Oc2yg8



