import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
PImage intertwinedFate;
PImage acquaintFate;
PImage genesisCrystal;
PImage bg;
PFont font;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
//final int WIN = 5;
int icon;
final int IF = 1;
final int AF = 2;
final int GC = 3;

//target variables
float x, y;
float vx, vy; //target velocity
int score, lives;
int highscore;
float sliderX;
float wishSize;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//color pallette
color blue = #D4DCFF;
color cream = #F5FFC6;
color green = #C1FF9B;
color red = #E88D67;
color orange = #D66853;
color brown = #7C6354;
color gray = #5D576B;
color white = #E9ECF5;

void setup() {
  size(800, 800);
  mode = INTRO;
  icon = IF;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  //target initialization
  reset();
  highscore = score;
  sliderX = 275;
  wishSize = 205;
  //image&font
  intertwinedFate = loadImage("intertwinedFate1.png");
  acquaintFate = loadImage("acquaintFate1.png");
  genesisCrystal = loadImage("genesisCrystal1.png");
  bg = loadImage("wishScreen.jpg");
  font = createFont("Pumpkin Story.ttf", 50);
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode is " + mode);
  }
}
void tactile(int x, int y, int w, int h) {
  if (mouseX < x+(w/2) && mouseX > x-(w/2) && mouseY < y+(h/2) && mouseY > y-(h/2)) {
    stroke(orange);
  } else {
    stroke(0);
  }
}
//void optionsTactile(int x, int y, int w, int h) {
//  if (mouseX < x+w/2 && mouseX > x-w/2 && mouseY < y+h/2 && mouseY > y-h/2) {
//    stroke(orange);
//  } else {
//    stroke(0);
//  }
//}
