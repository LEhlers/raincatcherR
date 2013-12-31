class goldRain {
  float d, dd;
  PVector locGo, vel, spd;
  color gold;

  goldRain() {
    d= (random(5, 8));
    dd= (random(5, 8));
    //raindrops can be a variety of small sizes
    locGo= new PVector (random(width), random(-300, 0));
    //raindrops are staggered as some fall up to 300 pixels above the screen
    spd= new PVector (random(2), random (1, 3));
    //raindrops can fall at a variety of comparable speeds
    gold= color (225, 255, 0);
    //raindrops are golden
  }

  void displayG () {
    fill (gold);
    ellipse (locGo.x, locGo.y, d, dd);
  }

  void moveG() {
    locGo.add (spd);
    //locGoation changes, creating the "falling" of the raindrops
    if (locGo.y >= height) {
      locGo.y= 0;
    }
    if (locGo.x >= width) {
      locGo.x= 0;
    }
    //raindrops reset to top if the pass through the bottom or sides
  }
}

