int scoreBlue, scoreRed; //player scores
float counter;
char winner;
float x1, y1, speed1;
float x2, y2, speed2;
boolean up1, down1, right1, left1;
boolean up2, down2, right2, left2;
float timer;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OVER = 3;

void setup() {
  size(1200,800,P2D);
  mode = 1;
  counter = 0;
  scoreBlue = 0;
  scoreRed = 0;
  x1 = 300;
  y1 = 400;
  x2 = 900;
  y2 = 400;
  speed1 = 1;
  speed2 = 1;
  timer = 91;
  textAlign(CENTER,CENTER);
  
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
