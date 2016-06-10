class Person extends Object {

  Person(float x, float y) {
    super(x, y);
    speed=3;
  } 
  void update() {

    if (alive==true) {
      if (position.x<=bomb.position.x) {
        position.x+= speed;
      }
    }
    if (alive==false) {

      if (position.y > starty) {
        position.y -=speed;
      }
      if (position.x> startx) {
        position.x-=speed;
      }
    }
  }

  void render() {
    pushMatrix();
    rectMode(CENTER);
    rect(position.x, position.y+18, 15, 20);
    ellipse(position.x, position.y, 20, 20);
    line(position.x+7.5, position.y+30, position.x+7.5, position.y+35);
    line(position.x-7.5, position.y+30, position.x-7.5, position.y+35);
    popMatrix();
  }
}

