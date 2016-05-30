PImage img;

void setup(){
  size(640, 480);
  stroke(255, 102);
}

void draw(){
  background(0);
  img = loadImage("photo.jpg");
  image(img, 0, 0);
  
  noStroke();
  fill(0);
  rect(20, 20, 60, 20);
  
  color c = get(mouseX, mouseY);
  fill(red(c), 0, 0);
  rect(20, 20, 20, 20);
  fill(0, green(c), 0);
  rect(40, 20, 20, 20);
  fill(0, 0, blue(c));
  rect(60, 20, 20, 20);
  
  stroke(255, 102);
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
}