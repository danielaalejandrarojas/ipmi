//tp3 Daniela Alejandra Rojas - legajo 78653/5 - dni:517
PImage foto;

float cant = 16;
float modX = 400/cant;
//variable global para mover el rectangulo
float movx = 20, movy = 20;

//variable global para cambio de color
float negro = 0, celeste = (160);

void setup() {
  size(800, 400);
  foto = loadImage("Julio Le Parc Double progression (2).jpg");
}

void draw() {
  image(foto, 0, 0, 400, 400);
  fondo();
  for (int x = 0; x < cant; x ++) {
    for (int y = 0; y < cant; y ++) {
      miFigura(x, y);
      pelota(x, y);
    }
  }
}
