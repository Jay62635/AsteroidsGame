//your variable declarations here
Spaceship spaceship;
Star[] stars;
ArrayList<Asteroid> asteroids = new ArrayList();
int seconds = 0;
public void setup() 
{
  size(500,500);
  background(0);
  for(int i = 0;i<10;i++)
    asteroids.add(new Asteroid());
  spaceship = new Spaceship();
  stars = new Star[200];
  for(int i = 0;i<stars.length;i++)
    stars[i] = new Star();
}
public void draw() 
{
  background(0);
  if (seconds%300 == 0){
    if(asteroids.size() < 10)
      asteroids.add(new Asteroid());
    seconds = 0;
  }
      
  for(int i = 0;i<stars.length;i++)
    stars[i].show();
  
  spaceship.move();
  spaceship.show();
  for(int i = asteroids.size()-1;i>-1;i--){
    asteroids.get(i).astmove();
    asteroids.get(i).show();
    if (dist((float) asteroids.get(i).getmyCenterX(),(float) asteroids.get(i).getmyCenterY(), (float)spaceship.getmyCenterX(), (float) spaceship.getmyCenterY())<10)
      asteroids.remove(i);
   seconds += 1;
  }
}
public void keyPressed(){
  if (key == 'd')
    spaceship.turn(7);
  else if (key == 'a')
    spaceship.turn(-7);
  else if (key == 'w')
    spaceship.accelerate(0.2);
  else if (key == 's')
    spaceship.accelerate(-0.2);
  else if (key == ' '){
    background(255);
    spaceship.setCenterX((int)(Math.random()*501));
    spaceship.setCenterY((int)(Math.random()*501));
    spaceship.setmyPointDirection((int)(Math.random()*361));
    spaceship.setmyXspeed(0);
    spaceship.setmyYspeed(0);
  }
}
