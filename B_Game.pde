void game() {
  background(#3B763F);
  
  //player 1
  stroke(0);
  strokeWeight(3);
  fill(#DE5628);
  circle(x1, y1, 30);
  if (up1) y1 -= speed1;
  if (down1) y1 += speed1;
  if (left1) x1 -= speed1;
  if (right1) x1 += speed1;
  
  //player 2
  stroke(0);
  strokeWeight(3);
  fill(#1D9ECB);
  circle(x2, y2, 30);
  if (up2) y2 -= speed2;
  if (down2) y2 += speed2;
  if (left2) x2 -= speed2;
  if (right2) x2 += speed2;
  
  //timer
  timer -= 0.01666666666;
  fill(255);
  textSize(20);
  text(timer,600,30);
}
