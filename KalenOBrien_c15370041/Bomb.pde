class Bomb extends Object{
  float gravity;
  boolean alive=false;
 Bomb(float x,  float y){
  super(x,y);
  alive=false;
  gravity=5;
  speed=1.5;
 } 
 void update(){
   if(alive==true){
   position.x+= speed;
   position.y+= gravity;
   if(position.y>400){
    position.y-=5;
    speed=0;
   }
   if(alive ==false){
    position.y =plane.position.y;
    position.x = plane.position.x;
   }
   
 }
 }
 void render(){
 
  pushMatrix();
  fill(200,0,0);
  stroke(0);
  rect(position.x,position.y,25,25);
  popMatrix(); 
   

 }
  
}
