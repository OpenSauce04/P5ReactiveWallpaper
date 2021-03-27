PImage nightimg;
PImage dayimg;
void setup() {
  nightimg=loadImage("night.jpg");
  dayimg=loadImage("day.jpg");
  fullScreen();
  frameRate(1);
}
void draw() {
  if(6<hour()&&hour()<20) {
    image(dayimg,0,0,height/1.778125,height);
  } else {
    image(nightimg,0,0,height/1.778125,height);
  }
}
