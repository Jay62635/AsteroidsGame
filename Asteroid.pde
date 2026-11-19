class Asteroid extends Floater
{
  protected double myRotationspeed;
  public Asteroid(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = 8;
    yCorners[2] = 8;
    xCorners[3] = 8;
    yCorners[3] = -8;
    myColor = 130;
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    myXspeed = (Math.random()*9)-4;
    myYspeed = (Math.random()*9)-4;
    myPointDirection = (int)(Math.random()*361);
    myRotationspeed = (int)(Math.random()*11)-5;
  }
  public void astmove(){
    turn(myRotationspeed);
    move();
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
}
