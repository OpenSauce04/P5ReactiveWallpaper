import java.util.TimeZone;
import java.util.Date;

PImage nightimg;
PImage dayimg;
int DST=0;

void drawWallpaper() {
  if (7+DST<=hour() && hour()<19+DST) {
    image(dayimg, 0, 0, height/1.778125, height);
  } else {
    image(nightimg, 0, 0, height/1.778125, height);
  }
}

void setup() {
  nightimg=loadImage("night.jpg");
  dayimg=loadImage("day.jpg");
  fullScreen();
  frameRate(0.1);
  if (TimeZone.getDefault().inDaylightTime( new Date() )) {
    DST=1;
  }
  if (DST==1) {
    print("DST active");
  } else {
    print("DST inactive");
  }

  drawWallpaper();
}

void draw() {
  drawWallpaper();
}
