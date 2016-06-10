class Person extends Object {

  Person(float x, float y) {
    super(x, y);
    speed=3;
  } 
  void update() {
    
      if(position.x<=bomb.position.x){
        println("moving");
       position.x+= speed; 
      }
      
    
  }

  void render() {
    pushMatrix();
    rect(position.x, position.y+18, 15, 20);
    ellipse(position.x, position.y, 20, 20);
    line(position.x+7.5, position.y+30, position.x+7.5, position.y+35);
    line(position.x-7.5, position.y+30, position.x-7.5, position.y+35);
    popMatrix();
  }
}

