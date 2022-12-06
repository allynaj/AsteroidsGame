class Bullet extends Floater {
  public Bullet(Spaceship neil) {
    myCenterX = neil.getCenterX();
    myCenterY = neil.getCenterY();
    myXspeed = neil.getXspeed();
    myYspeed = neil.getYspeed();
    myPointDirection = neil.getPointDirection();
    accelerate(6.0);
  }
  public void show() {
    ellipse((float)myCenterX,(float)myCenterY,10,10); 
  ]
  
}
