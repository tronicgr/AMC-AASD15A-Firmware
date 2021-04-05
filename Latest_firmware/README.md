### This is the latest firmware for AMC-AASD15A... (v2.11 fix5)

~

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo

AVRUBD utility: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/Firmware%20bootloader%20Utility%2052.zip

### Settings in AVRDB for loading the fimware to older 128k Atmega boards:
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/1280%20firmware%20update%20option2.jpg)

The 128k devices use this firmware: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/enc_6dof_AMC_AASD15A_v2_11_beta_fix5_RGB.zip


### INPORTANT notice:
- After loading new firmware, please hold down the "EXIT" button on the panel and press and release the "RESET" button on the controller to restore default parameters. See how its done on this video: https://www.youtube.com/watch?v=g12Grq-1LBQ


### Alternative settings in AVRDB for loading the fimware to new 256k Atmega boards (shipped after March 25 2021):
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option1.jpg)
![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/2560%20firmware%20update%20option2.jpg)

The 256k devices use this firmware: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/enc_6dof_AMC_AASD15A_v2_11_beta_fix5_RGB.zip





-- enc_6dof_AMC_AASD15A_v2_11_beta_fix5_RGB.zip 
--------------------------------------------------
- Separated standby speed from the spike filter so it can slowly enter or exit online mode.
- Allows now correct adjustment of the ESC speed during spike filter events, without interfering with Park and Standby motion speeds. 
- Added stealth LCD colors! To enable hold UP button and press reset until a message appears.
- Restore Default RGB colors by holding DOWN button and press reset button until the message appears.



