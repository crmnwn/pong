void gameover() {
  theme.pause();
  gameover.play();
  background(red);
  textSize(70);
  fill(gray);
  text("OUT OF WISHES", 400, 350);
  textSize(50);
  text("debate clubs pulled : " + score, 400, 450);
  textSize(30);
  text("highest pulls : " + highscore, 400, 500);
  textSize(30);
  fill(white);
  tactile(400, 600, 150, 80);
  rect(400, 600, 150, 80, 20);
  textSize(50);
  fill(0);
  text("restart", 400, 595);
  if (score > highscore) {
    highscore = score;
  }
  fill(white);
  tactile(700, 730, 100, 50);
  rect(700, 730, 100, 50, 20);
  fill(0);
  textSize(30);
  text("quit", 700, 725);
}

void gameoverClicks() {
  reset();
  if (mouseX > 325 && mouseX < 475 && mouseY > 560 && mouseY < 640) {
    mode = INTRO;
  }
  theme.rewind();
  lives = 3;
  score = 0;
  if (mouseX > 650 && mouseX < 750 && mouseY > 705 && mouseY < 755) {
    exit();
  }
  
}
