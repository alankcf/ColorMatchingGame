void game () {
  //font
  textFont(font);
  
  fill(orange);
  text("GAME", width/2, height/2);
  
  //options
  fill(0);
  rect(0, 0, 400, 800);
  fill(255);
  rect(400, 0, 400, 800);
  
  //text on options
  textSize(110);
  text("TRUE", width/4, height/3);
  fill(0);
  text("FALSE", 3*width/4, height/3);
  
  //display
  textSize(70);
  fill(colors[c]);
  text(words[w], width/2, 2*height/3);
  
  //Points
  textSize(25);
  fill(darkyellow);
  if (score > 1) {
  text("Points: " + score, 700, 700);
  } else {
    text("Point: " + score, 700, 700);
  }
  
  //time bar 
  time = time - 1;
  fill(darkyellow);
  rect(100, 670, 200, 50);
  fill(darkblue);
  rect(100, 670, time, 50);
  
  // time elasped
  if (time == 0) {
    mode = GAMEOVER;
  }
  //question
  textSize(20);
  fill(darkblue);
  rect(0, 0, 800, 50);
  fill(white);
  text("Match or No Match?", width/2, 33);
}


void gameClicks () {
  // Match
  if (mouseX < 400) {
    if (w == c) {
      score = score + 1;
      time = 200;
      if (w < 5) {
      w = int (random (w+1, w+3));
      } else if (w >= 5) {
      w = int (random (w-5, w-3));
      }
      
  if (w < 5) {
  c = int (random (w - 1, w + 1));
  } else if (w >= 5) {
  c = int (random (w - 1, w + 1));
  }
      
  if (score > highscore) {
  highscore = highscore + 1;
     }
     
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
      if (score > highscore) {
      highscore = highscore + 1;
      }
      time = 200;
      if (w < 5) {
      w = int (random (w, w+3));
      } else if (w >= 5) {
      w = int (random (w-5, w-3));
      }
      
  if (w < 5) {
  c = int (random (w, w + 2));
  } else if (w >= 5) {
  c = int (random (w - 1, w + 1));
  }
      
    }
  }
}
