PImage foto;

void setup() {
  size(800, 400);
  foto = loadImage("retratro.jpg");
}

void draw() {
  background(216, 201, 201);
  image(foto, 0, 0);

  //RETRATO
  //CARA
  pushStyle();
  noStroke();
  fill(219, 193, 168);
  ellipse(590, 150, 120, 140);
  //PERA
  //ellipse(590, 210, 45, 35);
  popStyle();

  //CEJA IZ
  pushStyle();
  fill(0);
  stroke(0);
  strokeWeight(3);
  //strokeJoin(BEVEL);
  line(550, 128, 575, 129);
  //CEJA DR
  line(605, 129, 629, 128);
  popStyle();

  //OJO IZ
  pushStyle();
  fill(255);
  noStroke();
  ellipse(560, 142, 18, 10);
  //PUPILA
  fill(0);
  ellipse(560, 142, 9, 8);
  popStyle();

  //OJO DER
  pushStyle();
  fill(255);
  noStroke();
  ellipse(621, 142, 18, 10);
  //PUPILA
  fill(0);
  ellipse(621, 142, 9, 8);
  popStyle();

  //NARIZ
  pushStyle();
  stroke(214, 150, 108);
  strokeWeight(2);
  line(590, 150, 599, 170);
  line(587, 170, 599, 170);
  popStyle();

  //BOCA
  pushStyle();
  noStroke();
  fill(245, 158, 186);
  ellipse(590, 186, 25, 25);
  popStyle();
  //TRAMPILLA
  fill(219, 193, 168);
  noStroke();
  rect(575, 175, 35, 7);

  //DIENTES
  pushStyle();
  fill(255);
  noStroke();
  rect(583, 184, 14, 3);
  popStyle();

  //LENGUA
  pushStyle();
  fill(245, 96, 96);
  ellipse(590, 195, 10, 4);
  popStyle();

  //CUELLO
  pushStyle();
  fill(219, 193, 168);
  noStroke();
  rect(570, 200, 34, 40);
  popStyle();

  //PELO
  pushStyle();
  stroke(0);
  strokeWeight(5);
  //LADO IZQ
  line(575, 80, 565, 120);
  line(575, 80, 560, 125);
  line(575, 80, 550, 125);
  line(575, 80, 540, 130);
  line(575, 80, 535, 130);
  line(575, 80, 530, 130);
  line(575, 80, 525, 130);
  //FLECO
  line(575, 80, 580, 120);
  line(580, 80, 585, 115);
  line(585, 80, 590, 115);
  //LADO DER
  line(590, 80, 620, 120);
  line(590, 80, 625, 120);
  line(590, 80, 630, 120);
  line(590, 80, 635, 120);
  line(590, 80, 640, 120);
  line(590, 80, 645, 120);
  line(590, 80, 650, 125);
  line(590, 80, 655, 125);
  line(590, 80, 660, 125);
  line(590, 80, 665, 125);
  
  popStyle();
} //CORCHETE DRAW
