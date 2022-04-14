//colors
color darkpurple = #7776BC;
color purple = #CDC7E5;
color cream = #FFFBDB;
color yellow = #FFEC51;
color red = #EF674D;
color orange = #FFC49B;
color blue = #ACECF7;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; //target velocity

//keyboard variables
boolean wkey, skey, upkey, downkey;

//scoring
int leftscore, rightscore, timer;

void setup() {
  size(800, 800);
  mode = GAME;
  textAlign(CENTER, CENTER);
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  //initializing score
  leftscore = rightscore = 0;
  timer = 100;
  
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode is :" + mode);
  }
}
