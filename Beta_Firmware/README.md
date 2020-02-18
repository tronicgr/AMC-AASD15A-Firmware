Beta Versions. Use on own risk


-- enc_6dof_AMC_AASD15A_v2_09_fix_filter2.zip

The filter can be set to run globally, even on offline mode. 
The motors must be parked or powered off as there is safety that does not allow modification of the filter factor value otherwise. It will not allow modification when you operate the buttons on the panel, or being on online mode.
You can disable the filter entirely by selecting value "0" for the Filter Factor parameter.
The jump when entering online mode was fixed. Also fixed the jump if you activated e-stop in power off mode... it will always make sure the actuators are in park before starting motion, either offline or online.
