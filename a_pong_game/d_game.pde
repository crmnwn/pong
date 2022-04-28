void game() {
  if (mode == GAME) {
  background(cream);
  image(bg, 400, 400);
  //draw paddles
  strokeWeight(0);
  fill(orange);
  circle(leftx, lefty, leftd);
  fill(blue);
  circle(rightx, righty, rightd);
  //centerline
  strokeWeight(5);
  stroke(red);
  line(width/2, 0, width/2, height);
  //scoreboard
  textSize(50);
  fill(darkpurple);
  text(leftscore, width/4, 100);
  fill(darkpurple);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 600);
  timer = timer - 1;
  
  //pause button
  strokeWeight(5);
  fill(255);
  tactile(25, 25, 50, 50);
  rect(25, 25, 50, 50, 20);
  stroke(red);
  strokeWeight(5);
  line(40, 40, 40, 60);
  line(60, 40, 60, 60);
  
  //move paddles
  if (lefty > 700) lefty = 700;
  if (lefty < 100) lefty = 100;
  if (righty > 700) righty = 700;
  if (righty < 100) righty = 100;
  if (wkey == true) lefty = lefty - 4;
  if (skey == true) lefty = lefty + 4;
  if (AI == false) {
    if (upkey == true) righty = righty - 4;
    if (downkey == true) righty = righty + 4;
  } else {
    //righty = bally;
    if (ballx > 400){
      if (bally < righty) righty = righty - 3;
      if (bally > righty) righty = righty + 3;
    }
  }
  //ball
  strokeWeight(0);
  fill(yellow);
  circle (ballx, bally, balld);
  
  //moving
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  
  //scoring
  if (ballx+balld/2 < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (ballx+balld/2 > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  
  //bouncing
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/30+1;
    vy = (bally - lefty)/30+1;
    coin.rewind();
    coin.play();
    //vx = vx * 1.01;
    //vy = vy * 1.01;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/30+1;
    vy = (bally - righty)/30+1;
    coin.rewind();
    coin.play();
    //vx = vx * 1.01;
    //vy = vy * 1.01;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
    bump.rewind();
    bump.play();
  }
  //gameover
  fill(blue);
   if (leftscore - rightscore == 3) {
    leftwin = true;
    mode = GAMEOVER;
    gameover.rewind();
  } else if (rightscore - leftscore == 3) {
    rightwin = true;
    mode = GAMEOVER;
    gameover.rewind();
  }
  }
}

void gameClicks() {
  if (mouseX > 25 && mouseX < 75 && mouseY > 25 && mouseY < 75) {
    mode = PAUSE;
  }
}
