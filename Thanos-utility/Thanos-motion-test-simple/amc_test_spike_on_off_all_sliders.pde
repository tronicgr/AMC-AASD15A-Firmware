/**
 * AMC-AASD15A tester
 *
 * Move the scrollbar left and right to change the positions of the actuator (HEAVE).
 */
import processing.serial.*;

final boolean F = false;
final boolean T = true;
int lf = 10;      // ASCII linefeed

boolean onetimespikesetup = true;

Serial myPort;  // Create object from Serial class
int BaudRate=250000;

boolean bDoPrint;
String sReceived;
boolean spike_enabled;
boolean change_mode;

String CMD15 = "spv15028";  //range
String CMD16 = "spv16128";  //level
String CMD17 = "spv171";    //ON-OFF (ON)
String CMD17_off = "spv172";    //ON-OFF (ON)

HScrollbar hs1, hs2, hs3, hs4, hs5, hs6, hs7, hs8;  // seven scrollbars; 


int outputValue0 = 0;        // value output
int outputValue1 = 0;        // value output
int outputValue2 = 0;        // value output
int outputValue3 = 0;        // value output
int outputValue4 = 0;        // value output
int outputValue5 = 0;        // value output
int outputValue6 = 0;        // value output
int outputValue7 = 0;        // value output
byte[] buf0 = new byte[2];
byte[] buf1 = new byte[2];
byte[] buf2 = new byte[2];
byte[] buf3 = new byte[2];
byte[] buf4 = new byte[2];
byte[] buf5 = new byte[2];
byte[] buf6 = new byte[2];
byte[] buf7 = new byte[2];
byte[] ID = new byte[2];
byte[] endstring = new byte[2];

int rectX, rectY;      // Position of square button
int circleX, circleY;  // Position of circle button
int rectSize = 90;     // Diameter of rect
int circleSize = 93;   // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup() {
  size(800, 540);
  
  rectColor = color(240);
  rectHighlight = color(150);
  circleColor = color(240);
  circleHighlight = color(150);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = (width/2+circleSize/2+10)+270;
  circleY = (height/2)-200;
  rectX = (width/2-rectSize-10)+270;
  rectY = (height/2-rectSize/2)-200;
  
  noStroke();

  hs1 = new HScrollbar(0, height/2-90, width, 30, 5);
  hs2 = new HScrollbar(0, height/2-50, width, 30, 5);
  hs3 = new HScrollbar(0, height/2-10, width, 30, 5);
  hs4 = new HScrollbar(0, height/2+30, width, 30, 5);
  hs5 = new HScrollbar(0, height/2+70, width, 30, 5);
  hs6 = new HScrollbar(0, height/2+110, width, 30, 5);
  hs7 = new HScrollbar(0, height/2+150, width, 30, 5);
  hs8 = new HScrollbar(0, height/2+380, width, 30, 5);
  
  if (Serial.list().length > 0) {
    //nocomport = 1;
    myPort=new Serial(this, Serial.list()[0], BaudRate);
    myPort.clear();
    delay(20);
    myPort.bufferUntil(lf);
    char ch;
    while (myPort.available() > 0)
    {
      ch = (char) myPort.read();
    }
    myPort.clear();
    sReceived = "";
    //delay(50);
    myPort.write("RQM");
    delay(10);
    //char ch;
    while (myPort.available() > 0)
    {
      ch = (char) myPort.read();
      sReceived += ch;
      bDoPrint = T;
    }
    if (bDoPrint == F) {
      background(0);
      fill(255);
      textSize(36);
      text("No Thanos board detected", 50, 50);
      text("Please Disconnect other USB devices", 50, 110);
      delay(20);
    }
  } else
  {
    background(0);
    fill(255);
    textSize(36);
    text("No COM port detected", 50, 50);
    text("Please connect Thanos controller on a USB port", 50, 110);
    delay(20);
  }
}

void draw() {

  if (bDoPrint == F) {
    delay(5000);
    exit();
  } else
  {
    if(onetimespikesetup){
        delay(10);
        myPort.write(CMD15);
        delay(10);
        myPort.write(CMD16);
        delay(10);
        myPort.write(CMD17);
        delay(20);
        onetimespikesetup = false;
     } 
    if (change_mode == T) {
      change_mode = F;
      delay(10);
      if (spike_enabled == T) {
        delay(10);
        myPort.write(CMD15);
        delay(10);
        myPort.write(CMD16);
        delay(10);
        myPort.write(CMD17);
        delay(20);
        } 
      if (spike_enabled == F)  {
        myPort.write(CMD17_off); 
        delay(20);
      }
    } 
    
    
    
    
    updateobj(mouseX, mouseY);
    //background(currentColor);
    background(255);
    if (rectOver) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    stroke(0);
    rect(rectX, rectY, rectSize, rectSize);
    if (circleOver) {
      fill(circleHighlight);
    } else {
      fill(circleColor);
    }
    stroke(0);
    ellipse(circleX, circleY, circleSize, circleSize);
  
    // Get the position of the img1 scrollbar
    // and convert to a value to display the img1 image
    float img1Pos = hs1.getPos();
    float hirespos = img1Pos * 1000;
    fill(255);
    //image(img1, width/2-img1.width/2 + img1Pos*1.5, 0);
    
    float img2Pos = hs2.getPos();
    float hirespos2 = img2Pos * 1000;
    fill(255);
    
    float img3Pos = hs3.getPos();
    float hirespos3 = img3Pos * 1000;
    fill(255);
    
    float img4Pos = hs4.getPos();
    float hirespos4 = img4Pos * 1000;
    fill(255);
    
    float img5Pos = hs5.getPos();
    float hirespos5 = img5Pos * 1000;
    fill(255);
    
    float img6Pos = hs6.getPos();
    float hirespos6 = img6Pos * 1000;
    fill(255);
    
    float img7Pos = hs7.getPos();
    float hirespos7 = img7Pos * 1000;
    fill(255);
    
    float img8Pos = hs8.getPos();
    float hirespos8 = img8Pos * 1000;
    fill(255);
    
    hs1.update();
    hs1.display();
    hs2.update();
    hs2.display();
    hs3.update();
    hs3.display();
    hs4.update();
    hs4.display();
    hs5.update();
    hs5.display();
    hs6.update();
    hs6.display();
    hs7.update();
    hs7.display();
    hs8.update();
    hs8.display();

    textSize(36);
    text("Thanos controller motion test", 50, 50);
    textSize(24);
    text("Drag the sliders to set stroke on actuators", 50, 90);

    outputValue0 = int(map(hirespos, 0, 800000, 100, 65400));
    outputValue1 = int(map(hirespos2, 0, 800000, 100, 65400));
    outputValue2 = int(map(hirespos3, 0, 800000, 100, 65400));
    outputValue3 = int(map(hirespos4, 0, 800000, 100, 65400));
    outputValue4 = int(map(hirespos5, 0, 800000, 100, 65400));
    outputValue5 = int(map(hirespos6, 0, 800000, 100, 65400));
    outputValue6 = int(map(hirespos7, 0, 800000, 100, 65400));
    outputValue7 = int(map(hirespos8, 0, 800000, 100, 65400));

    // ID AXIS1 AXIS2 AXIS3 AXIS4 AXIS5 AXIS6 AXIS7 AXIS8 LF/CR
    // - The ID is byte values 0xFF + 0xFF
    // - Each Axis is 16bit wide.
    // - LF+CR is required in the end (0x0A + 0x0D)
    // change the analog out value:
    ID[0] = byte(255);
    ID[1] = byte(255);
    buf0[1] = byte(outputValue0 & byte(255));
    buf0[0] = byte((outputValue0) >> 8 & byte(255));
    buf1[1] = byte(outputValue1 & byte(255));
    buf1[0] = byte((outputValue1) >> 8 & byte(255));
    buf2[1] = byte(outputValue2 & byte(255));
    buf2[0] = byte((outputValue2) >> 8 & byte(255));
    buf3[1] = byte(outputValue3 & byte(255));
    buf3[0] = byte((outputValue3) >> 8 & byte(255));
    buf4[1] = byte(outputValue4 & byte(255));
    buf4[0] = byte((outputValue4) >> 8 & byte(255));
    buf5[1] = byte(outputValue5 & byte(255));
    buf5[0] = byte((outputValue5) >> 8 & byte(255));
    buf6[1] = byte(outputValue6 & byte(255));
    buf6[0] = byte((outputValue6) >> 8 & byte(255));
    buf7[1] = byte(outputValue7 & byte(255));
    buf7[0] = byte((outputValue7) >> 8 & byte(255));
    endstring[0] = byte(10); //LF
    endstring[1] = byte(13); //CR
    myPort.write(ID);
    myPort.write(buf0);
    myPort.write(buf1);
    myPort.write(buf2);
    myPort.write(buf3);
    myPort.write(buf4);
    myPort.write(buf5);
    myPort.write(buf6);
    myPort.write(buf7);
    myPort.write(endstring);
    delay(2);   // wait 2 milliseconds before the next loop

    byte data1 = ID[0];
    byte data2 = ID[1];
    byte data3 = buf0[0];
    byte data4 = buf0[1];
    byte data5 = buf1[0];
    byte data6 = buf1[1];
    byte data7 = buf2[0];
    byte data8 = buf2[1];
    byte data9 = buf3[0];
    byte data10 = buf3[1];
    byte data11 = buf4[0];
    byte data12 = buf4[1];
    byte data13 = buf5[0];
    byte data14 = buf5[1];
    byte data15 = buf6[0];
    byte data16 = buf6[1];
    byte data17 = buf7[0];
    byte data18 = buf7[1];
    byte data19 = endstring[0];
    byte data20 = endstring[1];
    textSize(18);
    text("string:" + hex(data1) + hex(data2) + " " + hex(data3) + hex(data4) + 
    hex(data5) + hex(data6) + hex(data7) + hex(data8) + hex(data9) + hex(data10) +
    hex(data11) + hex(data12) + hex(data13) + hex(data14) + hex(data15) +
    hex(data16) + hex(data17) + hex(data18) + " " + hex(data19) + hex(data20), 50, 120);

    int displayhirespos = int(map(hirespos, 0, 800000, 100, 65400));
    int displayhirespos2 = int(map(hirespos2, 0, 800000, 100, 65400));
    int displayhirespos3 = int(map(hirespos3, 0, 800000, 100, 65400));
    int displayhirespos4 = int(map(hirespos4, 0, 800000, 100, 65400));
    int displayhirespos5 = int(map(hirespos5, 0, 800000, 100, 65400));
    int displayhirespos6 = int(map(hirespos6, 0, 800000, 100, 65400));
    int displayhirespos7 = int(map(hirespos7, 0, 800000, 100, 65400));
    
    textSize(24);
    text("1.   " + int(displayhirespos), 50, 190);
    text("2.   " + int(displayhirespos2), 50, 230);
    text("3.   " + int(displayhirespos3), 50, 270);
    text("4.   " + int(displayhirespos4), 50, 310);
    text("5.   " + int(displayhirespos5), 50, 350);
    text("6.   " + int(displayhirespos6), 50, 390);
    text("7.   " + int(displayhirespos7), 50, 430);
    //text("7.   " + int(hirespos7) + " " + int(displayhirespos7), 50, 430);
    
    
    textSize(20);
    text(sReceived, 50, 490);

    stroke(0);
    line(0, height/2+190, width, height/2+190);
  }
}

class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;

  HScrollbar (float xp, float yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = l;
  }



  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (mousePressed && circleOver){
      spike_enabled = T;
      change_mode = T;
      fill(0);
      textSize(36);
      text("Spike Filter ON", 50, 150);
    }
    if (mousePressed && rectOver){
      spike_enabled = F;
      change_mode = T;
      fill(0);
      textSize(36);
      text("Spike Filter OFF", 50, 150);
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
      mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(204);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {  //if (over || locked) {
      fill(0, 0, 0);
    } else {
      fill(202, 102, 102);
    }
    rect(spos, ypos, sheight, sheight);
  }

  float getPos() {
    // Convert spos to be values between
    // 0 and the total width of the scrollbar
    return spos * ratio;
  }
}
  
  boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
  
  void updateobj(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}
  
