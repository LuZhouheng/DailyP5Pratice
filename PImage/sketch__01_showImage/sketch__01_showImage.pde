PImage img;

void setup(){
  size(640, 480);
}

void draw(){
  img = loadImage("photo.jpg");
  image(img, 0, 0);
}