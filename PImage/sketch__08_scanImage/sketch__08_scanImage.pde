PImage img;

void setup(){
  size(640, 480);
  stroke(255, 102);
  
  img = loadImage("photo.jpg");
  image(img, 0, 0);
  loadPixels();
}

void draw(){
  image(img, 0, 0);
  
  stroke(255);
  line(0, mouseY, width, mouseY);
  
  for(int i = 0; i < width; i++){
    color c = pixels[width * mouseY + i];
    stroke(c);
    line(i, 0, i, mouseY);
  }
}