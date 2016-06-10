float origin;
color background = color(50,150,255);
ArrayList<Object> objects = new ArrayList<Object>();
Clouds cloud1,cloud2,cloud3,cloud4,cloud5;
void setup(){
 size(600,600);
 background(background); 
 origin= width+100;
 for(int i =0 ; i <5; i++){
 objects.add( new Clouds(origin,random(0,200)));
 }

}

void draw() {
background(background); 
//cloud1.update();
//cloud1.render();

for (int i = 0; i < objects.size(); i ++){
 Object g = objects.get(i);
 g.render();
 g.update(); 
}
}
