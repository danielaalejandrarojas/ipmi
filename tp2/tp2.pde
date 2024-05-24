//tp2

PImage foto, img, obraMS, msla, libros;
PFont mf, fuente;
int contador, posx, dirx, posy, yneg;

//variable con asignacion que aumenta el tamaño de fuente
int tam = 14;

//variable de movimiento x el seguimiento del mouse
float sigtX, sigtY;

void setup() {
  size(640, 480);
  //cargo imagenes
  foto = loadImage("inicioMs.jpg");
  img = loadImage("marianosardon1.jpg");
  obraMS = loadImage("librosdearenaMS2.jpg");
  msla = loadImage("MarianoSardonLibrodeArena3.jpg");
  libros = loadImage("MSardonLA4.jpg");

  //cargo fuente
  mf = loadFont("CourierNewPS-BoldMT-25.vlw");
  fuente = loadFont("CourierNewPSMT-48.vlw");

  contador = 0;
  // frameRate(35);
  //Muevo letras
  posx = 350;
  dirx = 1;
  posy = 400;
  yneg = 480;
}

void draw() {
  //PANTALLA INICIO
  pushStyle();
  image(foto, 0, 0);
  textFont(mf);
  fill(255);
  textSize(24);
  text("Libros de Arena", 235, 220);
  text("Mariano Sardon", 240, 240);
  popStyle();

  //BOTON INICIO
  if ((mouseX >= 280) && (mouseX <= 349) && (mouseY >= 290) && (mouseY <= 308)) {
    fill(203, 0, 0);
    stroke(255);
  } else {
    fill(255, 3, 3);
    noStroke();
  }
  pushStyle();
  rect(280, 290, 70, 20);
  textFont(fuente);
  textSize(15);
  fill(255);
  text("INICIO", 289, 305);
  popStyle();

  if (contador >= 1) {
    //PANTALLA  1
    textFont(mf);
    pushStyle();
    image(img, 0, 0);
    textSize(20);
    fill(255);
    text("Libros de arena es una obra de arte interactiva \n donde el arte y la tecnologia se cruzan.\n Atravez del movimiento de las manos", 40, posy--);
    text("se descubren fragmentos de hipertextos \n de Jorge Luis Borges, extraídos de la Web por \n un programa automático en tiempo real.", 40, yneg--);
    popStyle();
    contador ++;
  }
  if (contador >= 513) {
    // PANTALLA 2
    pushStyle();
    image(obraMS, 0, 0);
    textFont(mf);
    textSize(20);

    posx = posx+dirx;

    if (posx > 450) {
      dirx = -1;
    } else if (posx < 150) {
      dirx = +1;
    }
    fill(203, 0, 0);
    textAlign(CENTER);
    text("Fueron expuestos en el 2004 \n en el Museo de Arte Moderno \n de Buenos Aires", posx, 200);
    popStyle();
  }

  if  (contador >= 1450) {
    //PANTALLA 3
    pushStyle();
    image(msla, 0, 0);
    textFont(mf);
    textSize(tam);

    sigtX = map(mouseX, 10, width, 4, 150);
    sigtY = map(mouseY, 4, height, 2, 150);
    fill(255);
    textAlign(LEFT);
    text("El autor se inspiro en el libro de \n Jorge Luis Borges: El libro de Arena", sigtX, 150);
    text("un libro infinito, \n enumerado al azar y \n con caracteres diversos.", 150, sigtY);
    popStyle();
  }
  if (contador >= 1720) {
    tam = 16;
  }
  if (contador >= 1825) {
    //PANTALLA FINAL
    pushStyle();
    image(libros, 0, 0);
    textFont(mf);
    textSize(20);
    textAlign(CENTER);
    fill(255);
    text("FIN", 320, 250);
    popStyle();
    contador = 1825;

    //BOTON REINICIO
    if ((mouseX >= 275) && (mouseX <= 368) && (mouseY >= 260) && (mouseY <= 280)) {
      fill(35, 141, 219);
      stroke(106, 174, 255);
    } else {
      fill(40, 35, 219);
    }
    pushStyle();
    rect(275, 260, 90, 20);
    textFont(fuente);
    textSize(14);
    fill(255);
    text("REINICIAR", 285, 274);
    popStyle();
  }

  println(mouseX, mouseY, contador, tam);
}//CORCHETE DRAW

void reset() {
  tam = 14;
  contador = 0;
  posx = 350;
  dirx = 1;
  posy = 400;
  yneg = 480;
 
}

void mousePressed() {
  if ((contador == 0) && (mouseX >= 280) && (mouseX <= 349) && (mouseY >= 290) && (mouseY <= 308)) {
    contador = 1;
  } else if ((contador == 1825) && (mouseX >= 275) && (mouseX <= 368) && (mouseY >= 260) && (mouseY <= 280)) {
    contador = 0;
    reset();
  }
}//CORCHETE MP
