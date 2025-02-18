class Spaceship extends Floater  
{   
     public Spaceship() {
       myColor = 255;
       myCenterY = 250;
       myCenterX = 250;
       myXspeed = 0;
       myYspeed = 0; 
       myPointDirection = 270;
       corners = 4;
       xCorners = new int[corners];
       yCorners = new int[corners];         
       xCorners[0] = -10;
       yCorners[0] = -8;
       xCorners[1] = 16;
       yCorners[1] = 0;
       xCorners[2] = -10;
       yCorners[2] = 8; 
       xCorners[3] = -2;
       yCorners[3] = 0;
   }
   

   public void hyperspace() {
     myXspeed = myYspeed = 0;
     myPointDirection = Math.random()*500;
     myCenterX = Math.random()*500;
     myCenterY = Math.random()*500;
   }
   
   public double getCenterX() {
     return myCenterX;
  }
  
   public double getCenterY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  
  public double getYspeed() {
    return myYspeed; 
  }
  public double getPointDirection() {
    return myPointDirection; 
  }
}
