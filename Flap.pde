float x1, y1, d1, vy1, ay1;
float x2, y2, d2, vy2, ay2;
float x3, y3, r3;

void setup() {
  size(1000,800,P2D);
  x1 = width/4;
  y1 = 600;
  d1 = 50;
  vy1 = 1;
  ay1 = 1;
  x2 = width/4;
  y2 = 200;
  d2 = 50;
  vy2 = 1;
  ay2 = 1;
  x3 = 800;
  y3 = 600;

}

void draw() {
  //player one
  noStroke();
  fill(#F58DB1);
  rect(0,400,1000,400);
  stroke(0);
  strokeWeight(3);
  fill(#DE5628);
  circle(x1,y1,d1);
  y1 += vy1;
  vy1 += ay1;

  if (y1 >= 775) {
    vy1 = 0;
    y1 = 774;
  }
  if (y1 <= 425) {
    vy1 = 0;
    y1 = 426;
  }
  
  //player two
  noStroke();
  fill(#A1E0D4);
  rect(0,0,1000,400);
  stroke(0);
  strokeWeight(3);
  fill(#1D9ECB);
  circle(x2,y2,d2);
  y2 += vy2;
  vy2 += ay2;

  if (y2 >= 375) {
    vy2 = 0;
    y2 = 374;
  }
  if (y2 <= 25) {
    vy2 = 0;
    y2 = 26;
  }  
  
  strokeWeight(5);
  line(0,400,1000,400);
  
  //hoop one
  stroke(#483B2A);
  noFill();
  strokeWeight(8);
  if (r3 == 1) {
    y3 = random(500,750);
    r3 = 0;
  }
  ellipse(x3,y3,90,20);
  if (x3 < -25) {
    x3 = 1025;
    r3 = 1;
  }
  x3 -= 8;
}

void keyPressed() {
  if (keyCode == UP && y1 > 400) vy1 = -15;
  if (key == 'w' && y1 > 0) vy2 = -15;

}
