float score2, score1; //player scores
float counter;
char winner;
float x1, y1, speed1;
float x2, y2, speed2;
boolean up1, down1, right1, left1;
boolean up2, down2, right2, left2;
boolean cd1, cd2, cd3;
float timer;
int crown;
float crownx, crowny;
float cdtime;
int cdtime1, cdtime2;


int mode;
final int INTRO = 0;
final int CHARACTER = 1;
final int GAME = 2;
final int PAUSE = 3;
final int OVER = 4;

void setup() {
  size(1200,800,P2D);
  mode = 0;
  counter = 0;
  score2 = 0;
  score1 = 0;
  x1 = 300;
  y1 = 400;
  x2 = 900;
  y2 = 400;
  speed1 = 2;
  speed2 = 2;
  timer = 21;
  textAlign(CENTER,CENTER);
  crown = 0;
  cdtime1 = 2;
  cdtime2 = 2;
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
