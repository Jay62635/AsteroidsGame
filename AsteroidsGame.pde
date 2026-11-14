//your variable declarations here
Spaceship spaceship;
Star[] stars;
public void setup() 
{
  size(500,500);
  background(0);
  spaceship = new Spaceship();
  stars = new Star[200];
  for(int i = 0;i<stars.length;i++)
    stars[i] = new Star();
}
public void draw() 
{
  background(0);
  for(int i = 0;i<stars.length;i++)
    stars[i].show();
  spaceship.move();
  spaceship.show();
}
public void keyPressed(){
  if (key == 'd')
    spaceship.turn(5);
  else if (key == 'a')
    spaceship.turn(-5);
  else if (key == 'w')
    spaceship.accelerate(3);
  else if (key == ' '){
    background(255);
    spaceship.setCenterX((int)(Math.random()*501));
    spaceship.setCenterY((int)(Math.random()*501));
    spaceship.setmyPointDirection((int)(Math.random()*361));
  }
}
