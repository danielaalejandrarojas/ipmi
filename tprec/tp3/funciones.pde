//FUNCION CON PARAMETROS QUE NO DEVUELVE VALOR
void miFigura(int x, int y) {
  //variable local para utilizar mi funcion de color
  color rellenoRect = colorRectangulo(242, 230, 231);
 
  fill(rellenoRect);
  noStroke();
  rect(402+x*modX, y*25, movx, movy);

  if (key == 'm') {
    movx = map(mouseX, 0, width-10, 10, 20);
    movy = map(mouseY, 0, height, 10, 20);
  } else if (key == 'M') {
    movx =20;
    movy =20;
  }
}

//FUNCION COLOR. CON RETURN Y PARAMETROS
color colorRectangulo(int r, int v, int a) {
  color c = color(r, v, a);
  return c;
}

//FUNCION CON PARAMETROS SIN RETURN
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
    negro  = map(402+a, mouseX, width, 145, 255);
  } else if ( key == 'N' ) {
    negro = 0;
  }
}

//FUNCION CON PARAMETROS SIN RETURN. PARA MODIFICAR EL COLOR DEL FONDO
void fondo(int r, int verde) {
  
  //variable local para asignarle a mi funcion "hayClick" el valor de true
  boolean verdadero = true;
  //variable para utilizar mifuncion
  boolean si = hayClick(verdadero);
 
  noStroke();
  fill(r, verde, celeste);
  rect(400, 0, 400, 400);

  if (mousePressed == si) {
    celeste ++;
    verde ++;
  }
}

//FUNCION CON RETURN CON PARAMETROS
boolean hayClick(boolean a) {
  return a;
}

//funcion para restablecer el valor inicial de las variables
void reset() {
  celeste = 160;
}
//reseteo variables con el teclado
void keyPressed() {
  if ( key ==  'R') {
    reset();
  }
}
