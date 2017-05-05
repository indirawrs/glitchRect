/*
This is a sound file player. 
 */

import processing.sound.*;

SoundFile soundfile;
SoundFile soundfile1;
SoundFile soundfile2;
SoundFile soundfile3;
SoundFile soundfile4;
SoundFile soundfile5;
SoundFile soundfile6;
SoundFile soundfile7;
SoundFile soundfile8;
SoundFile soundfile9;
SoundFile soundfile10;

int w;

Delay delay;

void setup() {
  size(640, 360);
  background(255);
  colorMode(HSB);

  //Load a soundfile
  //soundfile = new SoundFile(this, "vibraphon.aiff");
  soundfile = new SoundFile(this, "uke.aif");
  soundfile1 = new SoundFile(this, "bells-spook.aif");
  soundfile2 = new SoundFile(this, "birdflap.aif");
  soundfile3 = new SoundFile(this, "boopopp.aif");    
  soundfile4 = new SoundFile(this, "chew.aif");
  soundfile5 = new SoundFile(this, "cricket.aif");
  soundfile6 = new SoundFile(this, "frogs.aif");
  soundfile7 = new SoundFile(this, "grass.aif");
  soundfile8 = new SoundFile(this, "spray.aif");
  soundfile9 = new SoundFile(this, "bwow.mp3");
  soundfile10 = new SoundFile(this, "bwom.mp3");

  // create a Delay Effect
  delay = new Delay(this);

  // These methods return useful infos about the file
  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");

  // Play the file in a loop
  soundfile.loop();
  // soundfile1.loop();
  soundfile2.loop();
  soundfile3.loop();
  soundfile4.loop();
  soundfile5.loop();

  // Patch the delay
  delay.process(soundfile, 5);
  //delay.process(soundfile1, 5);
  //delay.process(soundfile2, 5);
  //delay.process(soundfile3, 5);
  //delay.process(soundfile4, 5);
  //delay.process(soundfile5, 5);
  //delay.process(soundfile6, 5);
  //delay.process(soundfile7, 5);
  //delay.process(soundfile8, 5);
}      


void draw() { 
  pushStyle();
  fill(mouseY, 255, 255);
  rect(mouseX, mouseY, 40, 60);
  popStyle();

  // Map mouseY from 0.2 to 1.0 for amplitude  
  //soundfile.amp(map(mouseY, 0, height, 0.2, 1.0)); 
  // Map mouseY from -1.0 to 1.0 for left to right 
  //soundfile.pan(map(mouseY, 0, height, -1.0, 1.0));  
  // Map mouseY from 0.001 to 2.0 seconds for the delaytime 
  //delay.time(map(mouseY, 0, height, 0.001, 2.0));
  // Map mouseX from 0 to 0.8 for the delay feedback 
  //delay.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

void keyPressed() {

  if (key == '1') {
    println('1');
  } else if (key == '2') {
    println('2');
  } else if (key == '3') {
    println('3');
  } else if (key == '4') {
    println('4');
  } else if (key == 'w' || key == 'W') {
    println("W is a noise assignment");
    soundfile6.loop();
    
  } else if (key == 'a' || key == 'A') {
    println("a is a noise assignment");
  } else if (key == 's' || key == 'S') {
    println("s is a noise assignment");
  } else if (key == 'd' || key == 'D') {
    println("d is a noise assignment");
  } else if (key == CODED) {
    if (keyCode == UP) {
      //pushStyle();
      fill(202, 255, 255);
      rect(10, 10, 500, 500);
      blendMode(NORMAL);
      println("up// blend mode darkest");
      //popStyle();
    } else if (keyCode == DOWN) {
      // pushStyle();
      blendMode(LIGHTEST);
      fill(60, 60, 60);
      rect(50, 10, 500, 500);
      println("down// blend mode lighest");
      //popStyle();
    } else if (keyCode == LEFT) {
      // pushStyle();
      blendMode(EXCLUSION);
      fill(60, 60, 60);
      rect(50, 10, 500, 500);
      println("left// blend mode exclusion");
      // popStyle();
    } else if (keyCode == RIGHT) {
      // pushStyle();
      blendMode(EXCLUSION);
      fill(60, 60, 60);
      rect(50, 10, 500, 500);
      println("left// blend mode exclusion");
      // popStyle();
    }
  }
}

void keyReleased() {
  // println("key released");
  //  soundfile6.amp(map(mouseY, 0, height, 0.2, .5));
  // soundfile8.play();
}


void stopAudio() {
}