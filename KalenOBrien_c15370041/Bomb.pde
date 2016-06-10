class Bomb extends Object {
  float gravity;

  Bomb(float x, float y) {
    super(x, y);

    gravity=5;
    speed=1.5;
  } 
  void update() {
    if (alive==true) {
      //The box will fall and keep moving slightly on the x axis as it falls to the ground.
      position.x+= speed;
      position.y+= gravity;
      if (position.y>400) {
        position.y=400;
        speed=0;
      }
      if (position.y == 400) {
        if (position.x> person.position.x) {
          person.position.x += 2;
        }
        if (position.y> person.position.y) {
          person.position.y+= 2;
        }
        if(position.x< person.position.x){
          person.position.x -= 2;
        }
        // Collider to see if the bomb is within or hitting the player.
        if (position.x + 5>= person.position.x -5&&
          position.x - 5 <= person.position.x +5 &&
          position.y + 5>= person.position.y-5 &&
          position.y - 5<= person.position.y+5) {
          println("collider");
          alive=false;
          objects.remove(this);
          
          plane.ammo =1;
       
         
        }
      }
    }
  }

  void render() {

    pushMatrix();
    fill(200, 0, 0);
    stroke(0);
    rect(position.x, position.y, 25, 25);
    popMatrix();
  }
}

