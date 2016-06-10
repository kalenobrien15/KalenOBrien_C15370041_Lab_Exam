//Origin position for clouds
float origin;
//background
color background = color(50, 150, 255);
//Array list for polymorphism to add objects too.
ArrayList<Object> objects = new ArrayList<Object>();
//Class related
Plane plane;
Bomb bomb;
Person person;
// Bool array for the number of keys available
boolean [] keys = new boolean[2000];
//Global bool to see if the bomb is active.
boolean alive=false;
// Origin position for Person
float startx, starty;

// Multiple key presses
void keyPressed() {
  keys[keyCode]=true;
}
void keyReleased() {
  keys[keyCode] = false;
}

void setup() {
  size(600, 600);
  startx = 30;
  starty=350;
  background(background); 
  origin= width+100;
  // For loop to add five clouds on start;
  for (int i =0; i <5; i++) {
    objects.add( new Clouds(origin+(random(100, 250)), random(0, 200)));
  }
  plane= new Plane(300, 100);
  bomb = new Bomb(0, 0);
  person =new Person(30, 350);
  objects.add(person);
  objects.add(plane);
}



void draw() {
  background(background); 


//Grass
  rectMode(CORNER);
  fill(0, 200, 0);
  stroke(0, 200, 0);
  rect(0, 300, width, 300);




  //If an objects gets instansiated it will increase the size of the array and render/update accordingly.
  for (int i = 0; i < objects.size (); i ++) {
    Object o = objects.get(i);
    o.render();
    o.update();
  }
  if(alive ==true){
   println("Im alive");
   
  }
  if(alive ==false){
  println("I'm dead");
  }
  
}

