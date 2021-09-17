//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// colors
color pink = #FF008D;
color green = #00FF3D, x;
color white = #FFFFFF;
color brown = #45201E;
color red = #A02D03;
color truered = #FF4B4B;
color orange = #FA8303;
color blue = #03ADFA;
color yellow = #E8BB3F, y;
color darkyellow = #FFAC12;
color black = #030303;
color darkblue = #272D4D;
color purple = #F50A60; //#B83564;
color mango = #FF6A5A;

String [] words;
color [] colors;


void setup () {
  size(800, 800);
  mode = INTRO;
  words = new String [7];
  colors = new color [7];
  words[0] = "red";
  words[1] = "green";
  words[2] = "yellow";
  words[3] = "blue";
  words[4] = "dark yellow";
  words[5] = "mango";
  words[6] = "brown";
  
  colors [0] = red;
  colors [1] = green;
  colors [2] = yellow;
  colors [3] = blue;
  colors [4] = darkyellow;
  colors [5] = mango;
  colors [6] = brown;
  
  int w = int (random (0, 6));
  int c = int (random(0, 6));
  
  if (mode == GAME) {
  fill(colors[c]);
  text(words[w], width/2, 2*height/3);
  
  }
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
