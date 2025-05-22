void gameOver() {
  noStroke();
  if (scoreRed == scoreBlue) {
    fill(100);
  }
  if (scoreRed > scoreBlue) {
    fill(#F58DB1);
  }
  if (scoreBlue > scoreRed) {
    fill(#A1E0D4);
  }
  rect(0,0,1000,800);
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);
  if (scoreRed == scoreBlue) {
    text("TIE!", 500, 400);
  }
  if (scoreRed > scoreBlue) {
    text("RED WINS!", 500, 330);
  }
  if (scoreBlue > scoreRed) {
    text("BLUE WINS!", 500, 330);
  }
  text(scoreBlue + " - " + scoreRed, 480, 420);
}
