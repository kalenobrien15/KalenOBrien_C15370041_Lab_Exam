float origin;
color background = color(50,150,255);
ArrayList<Object> objects = new ArrayList<Object>();
Plane plane;

boolean [] keys = new boolean[2000];

// Multiple key presses
void keyPressed(){
 keys[keyCode]=true; 
}
void keyReleased(){
 keys[keyCode] = false; 
}

void setup(){
 size(600,600);
 background(background); 
 origin= width+100;
 for(int i =0 ; i <5; i++){
 objects.add( new Clouds(origin+(random(100,250)),random(0,200)));
 }
 plane = new Plane(300,100);

}

void draw() {
background(background); 

for (int i = 0; i < objects.size(); i ++){
 Object o = objects.get(i);
 o.render();
 o.update(); 
}

rectMode(CORNER);
fill(0,200,0);
stroke(0,200,0);
rect(0,300,width,300);
plane.render();
plane.update();
}
