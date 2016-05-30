PImage img;
int mosaicWidth = 30;
int mosaicHeight = 20;


void setup(){
  size(640, 480);
  noStroke();
}

void draw(){
  background(0);
  img = loadImage("photo.jpg");
  image(img, 0, 0);
  loadPixels();
  
  for(int i = 0; i < height; i+=mosaicHeight){
    for(int j = 0; j < width; j+=mosaicWidth){
      color c = pixels[i * width + j];
      fill(c);
      rect(j, i, mosaicWidth, mosaicHeight);
    }
  }
}

void mouseDragged(){
  mosaicWidth = mouseX/4 + 10;
  mosaicHeight = mouseY/4 + 10;
}