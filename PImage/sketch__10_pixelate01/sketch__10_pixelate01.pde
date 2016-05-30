PImage img;
float mosaicSize = 12;

void setup(){
  size(640, 480);
  noStroke();
  img = loadImage("photo.jpg");
  image(img, 0, 0);
  loadPixels();
}

void draw(){
  background(0);
  for(int i = 0; i < height; i+=mosaicSize){
    for(int j = 0; j < width; j+=mosaicSize){
      color c = pixels[i * width + j];
      fill(c, 120);
      ellipse(j, i, brightness(c)/6.0, brightness(c)/6.0);
    }
  }
}

void mouseDragged(){
  mosaicSize = map(mouseX, 0, width, 1, 20);
}