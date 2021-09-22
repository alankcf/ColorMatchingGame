void intro () {
  //gif
  numberOfFrames = 7;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("tenor-gif_0"+i+"_delay-0.05s.gif");
    i++; // adds one
  }
  
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  //font
  textFont(font);
  
  //background(255);
  fill(darkyellow);
  textSize(100);
  textAlign(CENTER);
  text("Color Game", width/2, height/5);
  textSize(25);
  text("Click anywhere to begin!", width/2, 3* height/3.5);
  
  //puzzles
  if (w <= 3) {
  w = int (random (w+1, w+2));
  } else if (w > 3) {
  w = int (random (w-2, w-1));
  }
  
  if (w <= 3) {
  c = int (random (w, w + 1));
  } else if (w > 3) {
  c = int (random (w - 1, w));
  }
}


void introClicks () {
   mode = GAME;

}
