int imgSize = 1024 * 683;
PImage panda;

void setup() {
  size(1024, 800);
  panda = loadImage("panda.jpg");
  
  panda.loadPixels();
  
  noStroke();
}

void draw() {
  // Dibujando con la imagen
  //background(255);
  //image(panda, 0, 0, width, height);
  //tint(250, 0, 100);
  //image(panda, mouseX, mouseY, panda.width/5, panda.height/5);
  
  //background(panda.pixels[int(random(0, imgSize))]);
  
  // Reconstruyendo los circulos
  for (int j = 0; j < panda.height; j++) { 
    for (int i = 0; i < panda.width; i++) {
      fill(blue(panda.pixels[j * panda.width + i]),
      red(panda.pixels[j * panda.width + i]),
      green(panda.pixels[j * panda.width + i]));
      ellipse(i*5, j*5, 5, 5);
    }
  }
  
}
