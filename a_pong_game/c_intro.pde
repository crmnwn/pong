void intro() {
  textFont(font);
  theme.play();
  background(cream);
  strokeWeight(3);
  stroke(darkpurple);
  fill(255);
  tactile(150, 600, 200, 100);
  rect(150, 600, 200, 100, 20);
  tactile(450, 600, 200, 100);
  rect(450, 600, 200, 100, 20);
  fill(red);
  text("single", 250, 650);
  text("double", 550, 650);
  textSize(70);
  text("aesthetic", 400, 250);
  textSize(100);
  text("PONG", 400, 350);
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    AI = true;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    AI = false;
  }
}
