class rain {
  float d, dd;
  PVector loc, vel, spd;
  color r;

  rain() {
    d= (random(5, 8));
    dd= (random(5, 8));
    loc= new PVector (random(width), random(-300,0));
    spd= new PVector (random(2), random (1, 5));
    r= color (random(12), random(30), random(220,255));
  }

  void display () {
    fill (r);
    ellipse (loc.x, loc.y, d, dd);
  }

  void move() {
    loc.add (spd);
    if (loc.y >= height) {
      loc.y= 0;
    }
    if (loc.x >= width) {
      loc.x= 0;
    }
    if (loc.y >= height-40) {
      spd.y ++;
    }
  }
}
