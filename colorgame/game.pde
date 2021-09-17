void game () {
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
  
  //random colors and words
  //int w = int (random (0, 6));
  //int c = int (random(0, 6));
  
}

void gameClicks () {
  //mode = PAUSE;
  mode = GAMEOVER;
}
