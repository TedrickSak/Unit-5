float x1, y1, d1, vy1, ay1; //red player
float x2, y2, d2, vy2, ay2; // blue player
float x3, y3, r3; //red hoop 1
float x4, y4, r4; // blue hoop 1
float x5, y5, r5; //cheer

float speed; //hoop speed
int scoreBlue, scoreRed; //player scores
int calcBlue, calcRed; //whether or not it calculates if the ball is in the hoop
float counter;
char winner;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OVER = 3;

void setup() {
  size(1000,800,P2D);
  speed = 5;
  x1 = width/4;
  y1 = 600;
  d1 = 50;
  vy1 = 1;
  ay1 = 0.15 * speed;
  x2 = width/4;
  y2 = 200;
  d2 = 50;
  vy2 = 1;
  ay2 = 0.15 * speed;
  x3 = 800;
  y3 = 600;
  x4 = 800;
  y4 = 200;
  calcBlue = 1;
  calcRed = 1;
  counter = 0;
}


void draw() {
  if (mode == INTRO) {
    intro();
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


void checkVictor() {
  if (scoreRed >= 15 || scoreBlue >= 15 || speed > 35) {
    mode = OVER;
  }
}
