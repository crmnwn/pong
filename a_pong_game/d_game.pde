void game() {
  if (mode == GAME) {
  background(cream);
  //draw paddles
  strokeWeight(0);
  fill(orange);
  circle(leftx, lefty, leftd);
  fill(blue);
  circle(rightx, righty, rightd);
  //centerline
  strokeWeight(5);
  stroke(darkpurple);
  line(width/2, 0, width/2, height);
  //scoreboard
  textSize(50);
  fill(darkpurple);
  text(leftscore, width/4, 100);
  fill(darkpurple);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 600);
  timer = timer - 1;
  
  //move paddles
  if (lefty > 700) lefty = 700;
  if (lefty < 100) lefty = 100;
  if (righty > 700) righty = 700;
  if (righty < 100) righty = 100;
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    //righty = bally;
    /*
    if the ball is on the right side {
      if ball is above the right paddle, move up
      if ball is below the right paddle, move down
      
    }
    */
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
    vx = (ballx - leftx)/30;
    vy = (bally - lefty)/30;
    //vx = vx * 1.01;
    //vy = vy * 1.01;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/30;
    vy = (bally - righty)/30;
    //vx = vx * 1.01;
    //vy = vy * 1.01;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }
  //gameover
  fill(blue);
   if (leftscore - rightscore == 3) {
    leftwin = true;
    gameover();
  } else if (rightscore - leftscore == 3) {
    rightwin = true;
    gameover();
  }
  }
}

void gameClicks() {
  
}
