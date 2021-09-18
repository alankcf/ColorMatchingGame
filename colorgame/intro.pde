PImage[] gif;
int numberOfFrames;
int f;

void intro () {
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
}


void introClicks () {
   mode = GAME;

}
