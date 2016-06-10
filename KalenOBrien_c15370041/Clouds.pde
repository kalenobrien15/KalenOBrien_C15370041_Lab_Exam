class Clouds extends Object {
  float cloudr;
  Clouds(float x, float y)
  {
    super(x,y);
    speed=1.5;
    cloudr=80;
  }
  void update(){
   position.x -= speed;
   if(position.x <= -100){
    position.x = origin; 
    position.y = random(0,180);
    speed = random(0.5,2);
   }
  }
  void render(){
    
  pushMatrix();
  stroke(255);
  fill(255);
  ellipse(position.x,position.y,cloudr,cloudr);
  ellipse(position.x+40,position.y,cloudr-30,cloudr-30);
  ellipse(position.x-40,position.y,cloudr-30,cloudr-30);
  popMatrix();
  }
}

