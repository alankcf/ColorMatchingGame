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
  text("Points: " + score, 400, 700);
  } else {
  text("Point: " + score, 400, 700);
  } 
}

void gameoverClicks () {
  mode = INTRO;
  score = 0;
  time = 200;
}
