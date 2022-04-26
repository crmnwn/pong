void intro() {
  textFont(font);
  theme.play();
  background(0);
  image(bg, 400, 400);
  
  strokeWeight(3);
  fill(0);
  textSize(72);
  text("WISHING SIMULATOR", 400, 370);
  textSize(20);
  fill(gray);
  text("highest pulls : " + highscore, 400, 450);
  fill(255);
  tactile(200, 550, 200, 100);
  rect(200, 550, 200, 100, 20);
  fill(0);
  textSize(50);
  text("wish", 200, 545);
  fill(255);
  tactile(600, 550, 200, 100);
  rect(600, 550, 200, 100, 20);
  fill(0);
  textSize(30);
  text("change", 600, 530);
  text("banners", 600, 560);
}

void introCLicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
  }
}
