class Star //note that this class does NOT extend Floater
{
  private float myCenterX, myCenterY;
  private float mySize;
  public Star() {
    myCenterX = (float)(Math.random()*501);
    myCenterY = (float)(Math.random()*501);
    mySize = (int)(Math.random()*8);
  }
  public void show() {
    fill(color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)));
    noStroke();
    ellipse(myCenterX,myCenterY,mySize,mySize);
    stroke(255);
  }
}
