float score1, score2;
float counter;
char winner;
float x1, y1, speed1, sd1;
float x2, y2, speed2, sd2;
boolean up1, down1, right1, left1;
boolean up2, down2, right2, left2;
boolean cd1, cd2, cd3;
float dtime;
float timer;
int crown;
float crownx, crowny, crownrng;
float cdtime, cdctime;
int cdtime1, cdtime2, cdtime3;
boolean night;
float op;
PImage portal1;
PImage portal2;
float p1x, p1y, p2x, p2y;
int port1, port2;
boolean portable;
PImage sneaker;
float sneakerx, sneakery;
float sneakertime;
int shoe;
PImage car;
float cx, cy, cs;
int prevcrown;


int mode;
final int INTRO = 0;
final int CHARACTER = 1;
final int GAME = 2;
final int PAUSE = 3;
final int OVER = 4;

void setup() {
  size(1200,800,P2D);
  mode = 2;
  counter = 0;
  score2 = 0;
  score1 = 0;
  x1 = 300;
  y1 = 400;
  x2 = 900;
  y2 = 400;
  sd1 = 2;
  sd2 = 2;
  dtime = 31;
  timer = dtime;
  textAlign(CENTER,CENTER);
  crown = 0;
  crownrng = random(150,750);
  cdtime1 = 2;
  cdtime2 = 2;
  cdtime3 = 5;
  night = false;
  portal1 = loadImage("portal.png");
  portal2 = loadImage("portal.png");
  p1x = 100;
  p1y = random(30,220);
  p2x = 1100;
  p2y = random(50,750);;
  portable = true;
  sneaker = loadImage("sneaker.png");
  sneakerx = random(50,1150);
  sneakery = random(50,750);
  shoe = 0;
  car = loadImage("car.png");
  cx = 600;
  cy = -50;
  cs = 0.5;
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == CHARACTER) {
    character();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OVER) {
    gameOver();
  } else {
    println("Error, mode is" + mode);
  }
}
