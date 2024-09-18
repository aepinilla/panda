PImage panda;

void setup() {
  size(800, 800);
  panda = loadImage("Grosser_Panda.JPG");
}

void draw() {
  background(255);
  image(panda, 0, 0, width, height);
  tint(250, 0, 100);
  image(panda, mouseX, mouseY, panda.width/5, panda.height/5);
}
