class Plane extends Object {
  int ammo=1;
  Plane(float x, float y) {
    super(x, y);
    speed = 5;
    ammo =1; 
  } 
  void update() {
    if (position.x<=width+150) {
      position.x += speed;
    }
    if (position.x>=width+150) {
      position.x = -150;
    }

    // Input, ammo used as an off and on switch so input cant be pressed and spammed until bomb is retreieved.
    if (ammo > 0) {
         // On space press bomb is made and added to the objects Arraylist, changes the global bool to true and removes the ammo by 1;
        if (keys[' ']) {
            Bomb bomb = new Bomb(position.x,position.y);
            objects.add(bomb);
            alive=true;
            println("bomb");
            ammo--;
        
      }
    }
  }
  void render() {
    rectMode(CENTER);
    pushMatrix();
    fill(200);
    stroke(200);
    rect(position.x, position.y, 25, 25);
    rect(position.x-10, position.y+25, 25, 50);
    rect(position.x-10, position.y-25, 25, 50); 
    rect(position.x-40, position.y, 80, 25);
    triangle(position.x+(25/2), position.y-(25/2), position.x+60, position.y+(25/2), position.x+(25/2), position.y+(25/2));
    triangle(position.x-80, position.y-25, position.x-80, position.y, position.x-40, position.y);
    fill(100);
    stroke(210);

    rect(position.x-5, position.y, 15, 15);
    rect(position.x-30, position.y, 15, 15);
    rect(position.x-55, position.y, 15, 15);
    popMatrix();
  }
}

