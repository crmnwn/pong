void pause() {
  theme.pause();
  fill(red);
  text("PAUSED", 400, 400);
  strokeWeight(5);
  fill(255);
  tactile(25, 25, 50, 50);
  rect(25, 25, 50, 50, 20);
  fill(red);
  stroke(red);
  triangle(40, 40, 40, 60, 60, 50);
}

void pauseClicks() {
  if (mouseX > 25 && mouseX < 75 && mouseY > 25 && mouseY < 75) {
    mode = GAME;
  }
}
