class Raindrops {
  PVector loc;
  PVector vel;
  int w;
  int h;
  PImage raindrop;



  Raindrops () {
    loc = new PVector(random(width), -20);
    vel = new PVector(0, 2);
    raindrop = loadImage("raindrop_edit.png");
    w = 20;
    h = 30;
  }

  void display() {
   imageMode(CENTER);
   image(raindrop, loc.x, loc.y, w, h);
  }
  
//  void display(){
//    fill(100,200,255);
//   ellipse(loc.x,loc.y,w,w); 
//  }

  void drop() {
    loc.add(vel);
  }


  void reset() {
    if (loc.y > height) {
      loc.y = 0;
    }
  }
  
  
}

