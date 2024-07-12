//tp3 Daniela Alejandra Rojas /Legajo: 78653/5
//link a video explicativo: https://youtu.be/L1QXviQDx8E

PImage foto;

float cant = 16;
float modX = 400/cant;
//variable global para mover el rectangulo
float movx = 20, movy = 20;

//variable global para cambio de color
float negro = 0;
int celeste = 160;

void setup() {
  size(800, 400);
  foto = loadImage("Julio Le Parc Double progression (2).jpg");
}

void draw() {
  image(foto, 0, 0, 400, 400);
  fondo(137,celeste);
  for (int x = 0; x < cant; x ++) {
    for (int y = 0; y < cant; y ++) {
      miFigura(x, y);
      pelota(x, y);
    }
  }
}
