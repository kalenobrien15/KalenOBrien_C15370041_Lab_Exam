class Bomb extends Object{
  float lx,ly;
 Bomb(float x,  float y){
  super(x,y);
  
 } 
 void update(){
   
 
 }
 
 void render(){
  
  pushMatrix();
  fill(200,0,0);
  stroke(0);
  rect(position.x,position.y,25,25);
  popMatrix(); 
   
 }
  
}
