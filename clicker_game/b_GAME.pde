void game() {
  theme.play();
  
  background(green);
  fill(0);
  textSize(50);
  text ("debate clubs pulled : " + score, width/2, 50);
  text ("lives: " + lives, width/2, 100);
  //pause button
  stroke(5);
  fill(255);
  tactile(50, 50, 50, 50);
  rect(50, 50, 50, 50, 20);
  stroke(red);
  strokeWeight(5);
  line(40, 40, 40, 60);
  line(60, 40, 60, 60);

  
  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  //circle(x, y, wishSize);
  if (icon == 1) {
    image(intertwinedFate, x, y, wishSize, wishSize);
  } else if (icon == 2) {
    image(acquaintFate, x, y, wishSize, wishSize);
  } else if (icon == 3) {
    image(genesisCrystal, x, y, wishSize, wishSize);
  }
  //moving
  x = x + vx;
  y = y + vy;
  //bouncing
  if (x < wishSize/2 || x > width-wishSize/2) {
   vx = vx * -1; 
  }
  if (y < wishSize/2 || y > height-wishSize/2) {
   vy = vy * -1;
  }
}

void gameClicks() {
  if (dist (mouseX, mouseY, x, y) < wishSize/2) {
    score = score + 1;
    vx = vx * 1.05;
    vy = vy * 1.05;
    coin.rewind();
    coin.play();
  } else if (mouseX > 25 && mouseX < 75 && mouseY > 25 && mouseY < 75) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) {
      mode = GAMEOVER;
      gameover.rewind();
    }
    if (lives < 0) {
      mode = GAMEOVER;
      gameover.rewind();
    }
  }
}
