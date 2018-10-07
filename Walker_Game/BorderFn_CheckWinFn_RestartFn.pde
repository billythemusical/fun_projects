//draw all the borders

void borders () {
  left();
  right();
  top();
  bottom();
}

//draw each of the borders
void left () {
  fill(255, 0, 0);
  quad(0, 0, width/10, height/10, width/10, height-(height/10), 0, height);
}

void top () {
  fill(0, 255, 0);
  quad(0, 0, width/10, height/10, width-(width/10), height/10, width, 0);
}

void right () {
  fill(0, 0, 255);
  quad(width-(width/10), (height/10), width, 0, width, height, width-(width/10), height-(height/10));
}

void bottom () {
  fill(255, 255, 0);
  quad(width-(width/10), height-(height/10), width, height, 0, height, width/10, height - (height/10));
}

//check the ellipse x/y to see if it's crossed a border 
//and display the winner

void checkWinner () {

  //red - left
  if (w.x <= width/10) {
    background(255, 0, 0);
    //pushMatrix();
    textSize(64);
    fill(150, 0, 255);
    text("Red Wins!!!", width/2, height/2);
    textSize(32);
    text("Press Space Bar to play again...", width/2, 3*height/4);
    //popMatrix();
  }

  //green - top
  if (w.y <= height/10) {
    background(0, 255, 0);
    //pushMatrix();
    textSize(64);
    fill(150, 0, 255);
    text("Green Wins!!!", width/2, height/2);
    textSize(32);
    text("Press Space Bar to play again...", width/2, 3*height/4);
    //popMatrix();
  }

  //blue - right
  if (w.x >= (width-(width/10))) {
    background(0, 0, 255);
    //pushMatrix();
    textSize(64);
    fill(150, 0, 255);
    text("Blue Wins!!!", width/2, height/2);
    textSize(32);
    text("Press Space Bar to play again...", width/2, 3*height/4);
    //popMatrix();
  }

  //yellow - bottom
  if (w.y >= (height-(height/10))) {
    background(255, 255, 0);
    //pushMatrix();
    textSize(64);
    fill(150, 0, 255);
    text("Yellow Wins!!!", width/2, height/2);
    textSize(32);
    text("Press Space Bar to play again...", width/2, 3*height/4);
    //popMatrix();
  }
}

// gives the option to restart game
// want to build a timer with visible counter to auto restart after x seconds 

void restartGame() {

  if (keyPressed) {
    if (key == 32) {
      fill(0);
      background(255);
      borders();
      w.x = width/2;
      w.y = height/2;
    }
  }
}
