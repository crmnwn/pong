void game() {
  background(cream);
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
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  //ball
  strokeWeight(0);
  fill(yellow);
  circle (ballx, bally, balld);
  
  //moving
  ballx = ballx + vx;
  bally = bally + vy;
  
  //scoring
  if (ballx+balld/2 < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
  }
  if (ballx+balld/2 > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
  }
  
  //bouncing
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = vx * -1;
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = vx * -1;
    vy = vy * -1;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  
}
