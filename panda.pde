PImage panda;

void setup() {
  size(800, 800);
  panda = loadImage("panda.jpg");
  
  panda.loadPixels();
  
  noStroke();
}

void draw() {
  // Dibujando con la imagen
  background(255);
  image(panda, 0, 0, width, height);
  tint(250, 0, 100);
  image(panda, mouseX, mouseY, panda.width/5, panda.height/5);
  
  background(panda.pixels[int(random(0, 100000))]);
  
  // Reconstruyendo los circulos
  for (int j = 0; j < panda.height; j++) { 
    for (int i = 0; i < panda.width; i++) {
      fill(panda.pixels[j * panda.width + i]);
      ellipse(i*5, j*5, 2, 2);
    }
  }
  
}
