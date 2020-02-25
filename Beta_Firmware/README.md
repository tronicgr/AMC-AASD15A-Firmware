Beta Versions. Use on own risk

---------------------------------------------------------------------------------------------------------------------

-- enc_6dof_AMC_AASD15A_v2_09_fix_filter5.zip

-Added spike filter that can be adjusted by two parameters:
- 1. Level: it defines the distance in data points that the input position have to exceed for the spike filter to kick in. This is absolute 16bit value 0-65535, default value 32767. If the spike filter kicks in too often, increase this value.
- 2. Speed: it defines the recovery speed that the motor will use to go to the target position demanded by the motion software while the spike filter is active. This is an generic number that needs a bit of experiment as its different for different leadscrew and stroke actuators. Default value is 800. If the actuators move too slow during the spike filter being active, you can increase this value more.


---------------------------------------------------------------------------------------------------------------------

-- enc_6dof_AMC_AASD15A_v2_09_fix_filter4.zip

-The filter is set to run globally, even on offline mode. Make sure to set the Park position to zero "0" to avoid small jumps while changing the filter factor value. The filter factor value is located under the Pulse Freq menu. The motors must be parked or powered off as there is safety that does not allow modification of the filter factor value otherwise. It will not allow modification when you operate the buttons on the panel, or being on online mode. You can disable the filter entirely by selecting value "0" for the Filter Factor parameter. There are 5 levels of filtering:
- 0 No Filter
- 1 Hard Filter
- 2 Semi-Hard Filter
- 3 Semi-Soft Filter
- 4 Soft-Filter
- 5 ...Molasses
                     
-The jump when entering online mode was fixed. Also fixed the jump if you activated e-stop in power off mode... it will always make sure the actuators are in park before starting motion, either offline or online.

-The new firmware will allow you to turn off the LCD updates for motor position information (bars) while still allowing navigating the menu by switching ON the DIP#3.

-I added a "Hold position" option for the Force Offline switch, which will keep the actuators on standby position (50%) while the Force offline switch is activated. Otherwise if you want to manually switch between Park and Standby positions while the Force Offline switch is active, you can select the option "Park Motors".

-It has a fix for when using Traction Loss axis, it will calibrate the motor in park position and then will slowly move to 50% position. While changing the Filter Factor value it will also move the TL actuator to Park position and move it back after the setting.

-Added an option to optionally change the signal level of the S-ON output pin (Enable), as some servos require High level signal to be enabled (5v).
