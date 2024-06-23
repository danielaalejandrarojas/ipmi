//funcion con parametros que no devuelve valor
void miFigura(int x, int y) {
  fill(242, 230, 231);
  noStroke();
  rect(402+x*modX, y*25, movx, movy);
  
  if (key == 'm'){
    movx = map(mouseX, 0, width-25, 10, 20);
    movy = map(mouseY, 0, height, 10, 20);
  } else if (key == 'M'){
    movx =20;
    movy =20;
  }
}
//funcion con parametros que no devuelve valor
void pelota(int a, int b) {
  //calcula la distancia desde los ejes x e y, mas el ancho y alto
  float distancia = dist(0, 0, width-400, height);
  //variable para moverme dentro  del ciclo for
  float dentrodelFor = dist(427+a*modX, b*25, 605, 200);
  //divido y multiplico las variables para el tamaño de las elipses
  float diametro = (dentrodelFor/distancia)*25;
  fill(negro, 0, negro);
  ellipse(412+a*modX, b*25+10, diametro, diametro);

  if ( key == 'n' ) {
    negro  = map(402+a, mouseX, width, 150, 255);
  } else if ( key == 'N' ) {
    negro = 0;
  }
}
//variables sin parametros
void fondo() {
  noStroke();
  fill(137, 146, celeste);
  rect(400, 0, 400, 400);
  if (mousePressed == true) {
    celeste ++;
  }
}

void reset() {
  celeste = 160;
}

void keyPressed() {
  if ( key ==  'R') {
    reset();
  }
}
