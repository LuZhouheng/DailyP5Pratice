PImage img;

void setup(){
  size(640, 480);
}

void draw(){
  background(0);
  img = loadImage("photo.jpg");
  noTint();
  image(img, 0, 0);
  tint(102);
  image(img, width/2, 0);
}