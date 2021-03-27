PImage nightimg;
PImage dayimg;
void setup() {
  nightimg=loadImage("night.jpg");
  dayimg=loadImage("day.jpg");
  fullScreen();
  frameRate(0.1);
}
void draw() {
  if(7<=hour()&&hour()<=18) {
    image(dayimg,0,0,height/1.778125,height);
  } else {
    image(nightimg,0,0,height/1.778125,height);
  }
}
