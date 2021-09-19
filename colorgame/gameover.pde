void gameover () {
  //font
  textFont(font);
  
  //text
  background(red);
  fill(brown);
  textSize(100);
  text("GAMEOVER", width/2, height/2);
  
  //display score
  textSize(50);
  fill(darkyellow);
  
  if (score > 1) {
  text("Points: " + score, 400, 600);
  } else {
  text("Point: " + score, 400, 600);
  } 
  
  //highscore
  if (score > highscore) {
    //score = highscore;
    text("Highscore: " + score, 400, 700);
  } 
  
  if (score == highscore) {
  text("Highscore: " + score, 400, 700);
}
  
  if (score < highscore) {
    //highscore = highscore;
    truehighscore = highscore;
    text("Highscore: " + truehighscore, 400, 700);
  } else if (score == 0) {
    text("Highscore: " + score, 400, 700);
  }
  
  
}

void gameoverClicks () {
  mode = INTRO;
  score = 0;
  time = 200;
}
