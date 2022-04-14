void reset() {
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  ballx = width/2;
  bally = height/2;
  balld = 100;
  leftscore = rightscore = 0;
  timer = 100;
  wkey = skey = upkey = downkey;
}
