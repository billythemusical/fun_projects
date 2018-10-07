class Walker {
  int x, y, r;
  //change the speed to make the game faster - default 7.5
  float speed = 10;

  Walker() {
    x = width/2;
    y = height/2;
    r = width/40;
  }



  void display() {
    stroke(5);
    fill(150, 0, 255);
    //point(x, y);
    ellipse(x, y, r, r);
  }
  void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    x += stepx*speed;
    y += stepy*speed;
  }

  //void step() {
  //  int choice = int(random(4));
  // if (choice == 0) {
  //  x+=speed;
  //} else if (choice == 1) {
  //  y+=speed;
  // } else if (choice == 2) {
  //   y-=speed;
  // } else {
  //   x-=speed;
  // }
  //}

  // still needs tweaking, goes x--, y--, y++, but not x++ evenly...
  // void cheat () {
  //  boolean mouselocX = x >= mouseX;
  //  boolean mouselocY = y >= mouseY;
  //  boolean mouselocXX = x < mouseX;
  //  boolean mouselocYY = y < mouseX;

  //  float fifty;
  //  fifty = (random(1));
  //  float chance = 0.8;
  //  if (mouselocX & fifty <= chance ) {
  //    x--;
  //  } else if (mouselocY & fifty <= chance) {
  //    y--;
  //  } else if (mouselocYY & fifty <= chance) {
  //    y++;
  //  } else if (mouselocXX & fifty <= chance) {
  //    x++;
  //  }
  //}
}
