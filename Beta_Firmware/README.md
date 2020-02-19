Beta Versions. Use on own risk


-- enc_6dof_AMC_AASD15A_v2_09_fix_filter3.zip

The filter is set to run globally, even on offline mode. Make sure to set the Park position to zero "0" to avoid small jumps while changing the filter factor value. The filter factor value is located under the Pulse Freq menu.
The motors must be parked or powered off as there is safety that does not allow modification of the filter factor value otherwise. It will not allow modification when you operate the buttons on the panel, or being on online mode.
You can disable the filter entirely by selecting value "0" for the Filter Factor parameter.
The jump when entering online mode was fixed. Also fixed the jump if you activated e-stop in power off mode... it will always make sure the actuators are in park before starting motion, either offline or online.
The new firmware will allow you to turn off the LCD updates for motor position information (bars) while still allowing navigating the menu by switching ON the DIP#3.
I added a "Hold position" option for the Force Offline switch, which will keep the actuators on standby position (50%) while the Force offline switch is activated. Otherwise if you want to manually switch between Park and Standby positions while the Force Offline switch is active, you can select the option "Park Motors".
