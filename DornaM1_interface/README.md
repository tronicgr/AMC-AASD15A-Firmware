Interface instructions for Dorna M1 servos


### Wiring Diagram for Dorna M1 servos

![Alt Text](https://github.com/tronicgr/AMC-AASD15A-Firmware/blob/master/DornaM1_interface/AMC-AASD15A%20to%20Dorna%20servomotor%20connections%20schematic%20sm.jpg)


```
PA500 = 0    (DEC)  (INPUT)
  [0] Servo-on (S-ON)   

PA510 = 0d40 (HEX)  (OUTPUT)
  -[4] Servo ready signal (S-RDY): active when servo is in proper status..
  -[D] Torque Reach signal (Treach): active when load torque reaches PA404/PA405.

-->PA402 = 100     (Forward rotation torque limit)
-->PA403 = 100     (Reverse rotation torque limit)


PA000.0 = 0 (Rotational direction at positive instruction --> CCW)
h.+++0   (HEX)
PA000.0 = 1 (Rotational direction at positive instruction --> CW)
h.+++1   (HEX)
PA000.1 = 0  Position control
h.++0+   (HEX)
--> PA000 = h0000


PA001.0 = 0  (DB to stop and maintain DB state after stop.)
d.+++0
--> PA001 = h0000  


PA200  (pulse input type)
d.++00   (DEC)  PULS+SIGN
--> PA200 = 0000


Electronic gear ratio  PA205/PA206  
The function of electronic gear is for setting the work-piece moving distance by 1
pulse instruction (1 instruction unit).
--> PA205 = 20
--> PA206 = 1


--> PA214 = 5   (Position instruction acceleration/deceleration time constant 1)
--> PA215 = 5   (Position instruction acceleration/deceleration time constant 2)
--> PA216 = 30   (Position instruction average-moving filter)





status check of torque on panel values
dP 11  (Torque feedback value in position control modes.) [%]


Complete list of values to enter in the DOrna M1:

PA000 = h0000
PA001 = h0000
PA200 = 0000
PA205 = 20
PA206 = 1
PA214 = 5
PA215 = 5
PA216 = 30
PA402 = 120
PA403 = 120
PA404 = 100
PA405 = 100
PA500 = 0
PA508 = b.0000
PA510 = h.0d40
PA511 = b.0000



```
