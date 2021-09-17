void intro () {
  background(255);
  fill(darkblue);
  textSize(100);
  textAlign(CENTER);
  text("Color Game", width/2, height/3);
  textSize(25);
  text("Click anywhere to begin!", width/2, 3* height/4);
}


void introClicks () {
   mode = GAME;

}
