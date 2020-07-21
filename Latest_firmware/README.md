### This is the latest firmware for AMC-AASD15A

~

### Firmware Update procedure video
https://www.youtube.com/watch?v=WkAm-MI0xbo

AVRUBD utility: https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/Firmware%20bootloader%20Utility%2052.zip

--------------------------------------------------
-- enc_6dof_AMC_AASD15A_v2_10_beta_fix6.zip

- fixed issue with jump occuring if Force offline switch is used while online. The actuators now return to online position smoothly.
- Fixed the disable Auto park issue where all actuators where parking on Force Offline switch even the TL and Surge ones.
- Fixed issue where the online motion where not restoring from Force Offline mode when you were modifying parameters. The changes to the parameters are temporary now and you can save them as normal after you disconnect from Simtools or other motion software.
- Fixed an issue where the actuators where not calibrating if Force offline switch was activated on power on of the controller.
- Changed the order of appearance for the Spike Filter "Range" and "Level" so you won't have to go back to modify the level twice.


AMC config tool v1.2 and AMC-AASD15A firmware v2.10 beta fix6:

- Download it and try it, but not before you update to the newest v2.10 beta fix6 firmware. Beware the v2.10 Fix6 firmware will restore default settings on the AMC. Make sure to take note of previous setting you used.

https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/AMC_Config_tool_1_2.zip

- small change from fix3, fix4 and fix5: fixed the jump on reconnects to simtools and proper switch to ONLINE, Use the v2.10 fix6 please.

- See how it operates here: https://www.youtube.com/watch?v=EQ3INaih13k

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/Latest_firmware/AMC-Config-tool-v1_2_AASD.jpg)
