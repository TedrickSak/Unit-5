void game() {
  background(#8CB27A);
  
  //player 1
  stroke(0);
  strokeWeight(3);
  fill(#DE5628);
  circle(x1, y1, 30);
  if (cd1 == false && x1 < 1185 && x1 > 15 && y1 < 785 && y1 > 15) {
    if (up1) y1 -= speed1;
    if (down1) y1 += speed1;
    if (left1) x1 -= speed1;
    if (right1) x1 += speed1;
  }
  if (x1 >= 1185) {
    x1 = 1184;
  }
  if (x1 <= 15) {
    x1 = 16;
  }
  if (y1 >= 785) {
    y1 = 784;
  }
  if (y1 <= 15) {
    y1 = 16;
  }
  
  //player 2
  stroke(0);
  strokeWeight(3);
  fill(#1D9ECB);
  circle(x2, y2, 30);
  if (cd2 == false && x2 < 1185 && x2 > 15 && y2 < 785 && y2 > 15) {
    if (up2) y2 -= speed2;
    if (down2) y2 += speed2;
    if (left2) x2 -= speed2;
    if (right2) x2 += speed2;
  }
  if (x2 >= 1185) {
    x2 = 1184;
  }
  if (x2 <= 15) {
    x2 = 16;
  }
  if (y2 >= 785) {
    y2 = 784;
  }
  if (y2 <= 15) {
    y2 = 16;
  }
  
  //timer
  timer -= 0.01666666666;
  fill(255);
  textSize(20);
  text(timer,600,30);
  
  if (crown == 0) {
    if (dist(crownx,crowny,x1,y1) < 30) {
      crown = 1;
    } else if (dist(crownx,crowny,x2,y2) < 30) {
      crown = 2;
    }
  }
  
  //crown position
  if (crown == 0) {
    crown(600,400);
  } else if (crown == 1) {
    crown(x1,y1);
  } else if (crown == 2) {
    crown(x2,y2);
  }
  
  //steal crown
  if (dist(x1,y1,x2,y2) < 30) {
    if (crown == 1 && cd2 == false) {
      crown = 2;
      cd1 = true;
      cdtime = timer;

    } else if (crown == 2 && cd1 == false) {
      crown = 1;
      cd2 = true;
      cdtime = timer;
    }
  }
  
  //cooldowns
  if (cd1 == true) { 
    fill(255);
    textSize(30);
    text(cdtime1 + "s Cooldown!", 550, 80);
    if (timer <= cdtime - cdtime1) {
      cd1 = false;
    }
  }
  if (cd2 == true) {
    fill(255);
    textSize(30);
    text(cdtime2 + "s Cooldown!", 650, 80);
    if (timer <= cdtime - cdtime2) {
      cd2 = false;
    }
  }
  
  //scores
  if (crown == 1) score1 += 0.01666666666;
  if (crown == 2) score2 += 0.01666666666;

  textSize(20);
  fill(#DE5628);
  text(int(score1),550,50);
  fill(#1D9ECB);
  text(int(score2),650,50);

  //timesup
  if (timer <= 0) {
    mode = 4;
  }
}

void crown(float x, float y) {
  fill(#FCE008);
  rect(x-15,y-15,30,10);
  triangle(x-15,y-25,x-15,y-15,x-5,y-15);
  triangle(x+15,y-25,x+15,y-15,x+5,y-15);
  triangle(x-5,y-15,x+5,y-15,x,y-25);
  crownx = x;
  crowny = y-15;
}

void cooldown1() {

}

void cooldown2() {

}
