// Alan Fung
// Sept 23, 2021
// Color Game

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

// colors
color pink = #EAA7FF;
color green = #A7FFB7, x;
color white = #FFFFFF;
color brown = #896120;
color red = #F70000;
color orange = #FA8303;
color blue = #03ADFA;
color yellow = #E8BB3F, y;
color black = #030303;
color darkyellow = #FFAC12;
color darkblue = #272D4D;
color purple = #6E06B9;
color darkred = #F25D5D;

//puzzles
String [] words;
color [] colors;
int w;
int c;

//score
int score;
int highscore;
int truehighscore;
float time;

//font
PFont font;

//gif
PImage[] gif;
int numberOfFrames;
int f;

void setup () {
  //font
  font = createFont ("FredokaOne-Regular.ttf", 2);
  
  size(800, 800);
  mode = INTRO;
  
  //random colors and words
  words = new String [7];
  colors = new color [7];
  words[0] = "red";
  words[1] = "green";
  words[2] = "yellow";
  words[3] = "blue";
  words[4] = "pink";
  words[5] = "purple";
  words[6] = "brown";
  
  colors [0] = red;
  colors [1] = green;
  colors [2] = yellow;
  colors [3] = blue;
  colors [4] = pink;
  colors [5] = purple;
  colors [6] = brown;
  
  //timer
  time = 200;
  
  //generate puzzle
  w = int (random (0, 6));
  c = int (random(w+1, w)); // not inclusive to last value
}

void draw () {
   if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: mode = " + mode);
  }
  
}
