void gameover() {
  theme.pause();
  gameover.play();
  fill(red);
  if (leftwin == true) { 
    text("left wins", 400, 300);
  } else if (rightwin == true) {
    text("right wins", 400, 300);
  }
  fill(red);
  text("press anywhere to restart", 400, 500);
}

void gameoverClicks() {
  reset();
  theme.rewind();
  mode = INTRO;
}
