//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// colors
color pink = #EAA7FF;
color green = #A7FFB7, x;
color white = #FFFFFF;
color brown = #6C4846;
color red = #A02D03;
color truered = #FF4B4B;
color orange = #FA8303;
color blue = #03ADFA;
color yellow = #E8BB3F, y;
color black = #030303;
color darkyellow = #FFAC12;
color darkblue = #272D4D;


color purple = #F50A60;

String [] words;
color [] colors;

int score;
float time;

//font
PFont font;
 

void setup () {
  
  font = createFont ("Kanit-Light.ttf", 2);
  size(800, 800);
  mode = INTRO;
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

  time = 200;
  
}

void draw () {
   if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: mode = " + mode);
  }
  
}
