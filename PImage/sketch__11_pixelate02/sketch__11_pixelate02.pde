PImage img;
float mosaicSize = 6;

void setup(){
  size(640, 480);
  noStroke();
  img = loadImage("photo.jpg");
  image(img, 0, 0);
  loadPixels();
  rectMode(CENTER);
  smooth();
}

void draw(){
  background(0);
  for(int i = 0; i < height; i+=mosaicSize){
    for(int j = 0; j < width; j+=mosaicSize){
      color c = pixels[i * width + j];
      fill(c, 127);
      pushMatrix();
      translate(j, i);
      rotate(brightness(c));
      rect(0, 0, brightness(c)/6.0, 2);
      popMatrix();
    }
  }
}

void mouseDragged(){
  mosaicSize = map(mouseX, 0, width, 1, 10);
}