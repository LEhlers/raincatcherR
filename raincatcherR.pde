

rain[] r;
catcher cc;

void setup () {
  size (600,600);
  r= new rain[2400];
    for (int i=0; i<r.length; i++) {
    r[i] = new rain();
    }
    cc= new catcher();
}

void draw() {
  background (4, 14);
    for (int i=0; i<r.length; i++) {
    r[i].display();
    r[i].move();
    }
    cc.displayC();
}
