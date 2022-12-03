Spaceship neil;
Star [] stars = new Star[200];
ArrayList <Asteroid> armstrong;
public void setup() 
{
  size(500,500);
  background(0);
  neil = new Spaceship();
  armstrong = new ArrayList <Asteroid>();
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i<10; i++) 
    armstrong.add(new Asteroid());
}

public void keyPressed() {
  if(key == 'h') 
    neil.hyperspace();
  if(key == 'w') 
    neil.accelerate(0.5);
  if(key == 'a') 
    neil.turn(-7);
  if(key == 's') 
    neil.accelerate(-0.5);
  if(key == 'd') 
    neil.turn(7);
}
public void draw() {
  background(0);
  neil.show();
  for(int i=0; i<stars.length; i++) {
    stars[i].show();
  }
  neil.move();
  neil.show();
  for(int i = 0; i <= armstrong.size() - 1; i++){
    armstrong.get(i).move();
    armstrong.get(i).show();
    double distance = dist((float)neil.getCenterX(), (float)neil.getCenterY(), (float)armstrong.get(i).getCenterX(), (float)armstrong.get(i).getCenterY());
    if(distance<15)
      armstrong.remove(i);
  }
  
}
