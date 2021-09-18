int w = int (random (0, 6));
int c = int (random(0, 6));

void game () {
  
  //font
  textFont(font);
  
  //background (0);
  fill(orange);
  text("GAME", width/2, height/2);
 
  //options
  fill(0);
  rect(0, 0, 400, 800);
  fill(255);
  rect(400, 0, 400, 800);
  
  //text on options
  textSize(100);
  text("MATCH", width/4, height/3);
  fill(0);
  text("NO", 3 *width/4, height/5);
  text("MATCH", 3 *width/4, 2 * height/5);
  
  //display
  fill(colors[c]);
  text(words[w], width/2, 2*height/3);
  
  //Points
  textSize(25);
  fill(darkyellow);
  text("Points:" + score, 700, 700);
  
  //time bar 
  time = time - 0.1;
  //textSize(25);
  //fill(darkyellow);
  //text("Time: " + time, 200, 500);
  fill(darkyellow);
  rect(100, 670, 200, 50);
  fill(darkblue);
  rect(100, 670, time, 50);
  
  if (time == 0) {
    mode = GAMEOVER;
  }
}


void gameClicks () {
  //mode = PAUSE;
  
  // Match
  if (mouseX < 400) {
    if (w == c) {
      score = score + 1;
      time = 200;
      
    //text(words[w], width/2, 2*height/3);
    } else {
      mode = GAMEOVER;
    }
    
  }
  //Not Match
  if (mouseX > 400) {
    if (w == c) {
    mode = GAMEOVER;
    } else {
      score = score + 1;
      time = 200;
      
    }
  }
}

void mousePressed () {

}
