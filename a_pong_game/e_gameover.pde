void gameover() {
  fill(red);
  if (leftwin == true) { 
    text("left wins", 400, 400);
  } else if (rightwin == true) {
    text("right wins", 400, 400);
  }
}

void gameoverClicks() {
  reset();
  fill(red);
  text("press anywhere to restart", 400, 400);
  mode = INTRO;
}
