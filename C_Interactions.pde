void keyPressed() {
  if (keyCode == UP) up2 = true;
  if (keyCode == DOWN) down2 = true;
  if (keyCode == LEFT) left2 = true;
  if (keyCode == RIGHT) right2 = true;
  if (key == 'w') up1 = true;
  if (key == 'a') left1 = true;
  if (key == 's') down1 = true;
  if (key == 'd') right1 = true;
  if (keyCode == ENTER && mode == INTRO) mode = GAME;
  if (key == ' ' && mode == GAME) {
    mode = PAUSE;
  } else if (key == ' ' && mode == PAUSE) {
    mode = GAME;
  }
}

void keyReleased() {
  if (keyCode == UP) up2 = false;
  if (keyCode == DOWN) down2 = false;
  if (keyCode == LEFT) left2 = false;
  if (keyCode == RIGHT) right2 = false;
  if (key == 'w') up1 = false;
  if (key == 'a') left1 = false;
  if (key == 's') down1 = false;
  if (key == 'd') right1 = false;
}

void mousePressed() {
  if (mode == OVER) {
    mode = INTRO;
    setup();
  }
}
