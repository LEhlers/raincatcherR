class rain {
  float d, dd;
  PVector loc, vel, spd, locG, spdG;
  color b, green;

  rain() {
    d= (random(5, 8));
    dd= (random(5, 8));
    //raindrops can be a variety of small sizes
    loc= new PVector (random(width), random(-300, 0));
    locG= new PVector (random(width), random(-300, 0));
    //raindrops are staggered as some fall up to 300 pixels above the screen
    spd= new PVector (random(2), random (1, 3));
    spdG= new PVector (random(2), random (1, 3));
    //raindrops can fall at a variety of comparable speeds
    b= color (random(12), random(30), random(220, 255));
    //raindrops can be different varieties of blue
    green= color(1, 240, 20);
  }

  void display () {
    fill (b);
    ellipse (loc.x, loc.y, d, dd);
  }

  void move() {
    loc.add (spd);
    //location changes, creating the "falling" of the raindrops
    if (loc.y >= height) {
      loc.y= 0;
    }
    if (loc.x >= width) {
      loc.x= 0;
    }
    //raindrops reset to top if the pass through the bottom or sides
  }
  
    void displayG () {
    fill (green);
    ellipse (locG.x, locG.y, d, dd);
  }

  void moveG() {
    locG.add (spdG);
    //location changes, creating the "falling" of the raindrops
    if (locG.y >= height) {
      locG.y= 0;
    }
    if (locG.x >= width) {
      locG.x= 0;
    }
    //raindrops reset to top if the pass through the bottom or sides
  }
}

