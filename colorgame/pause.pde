void pause () {
  background(110);
  
  //font
  textFont(font);
  
  fill(blue);
  text("PAUSE", width/2, height/2);
}

void pauseClicks() {
  mode = GAME;
}
