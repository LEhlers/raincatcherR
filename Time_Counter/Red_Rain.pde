class redRain {
  float d, dd;
  PVector locR, vel, spd;
  color red;

  redRain() {
    d= (random(5, 8));
    dd= (random(5, 8));
    //raindrops can be a variety of small sizes
    locR= new PVector (random(width), random(-300, 0));
    //raindrops are staggered as some fall up to 300 pixels above the screen
    spd= new PVector (random(2), random (1, 3));
    //raindrops can fall at a variety of comparable speeds
    red= color (255, 0, 0);
    //raindrops can be different varieties of blue
  }

  void displayR () {
    fill (red);
    ellipse (locR.x, locR.y, d, dd);
  }

  void moveR() {
    locR.add (spd);
    //locGoation changes, creating the "falling" of the raindrops
    if (locR.y >= height) {
      locR.y= 0;
    }
    if (locR.x >= width) {
      locR.x= 0;
    }
    //raindrops reset to top if the pass through the bottom or sides
  }
}

