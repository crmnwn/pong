void intro() {
  background(cream);
  strokeWeight(3);
  stroke(darkpurple);
  fill(255);
  tactile(150, 600, 200, 100);
  rect(150, 600, 200, 100, 20);
  tactile(450, 600, 200, 100);
  rect(450, 600, 200, 100, 20);
  fill(red);
  text("double", 250, 650);
  text("AI", 550, 650);
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    AI = false;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    AI = true;
  }
}
