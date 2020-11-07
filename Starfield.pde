Particle [] z = new Particle[1500];
void setup()
{
  size(500, 500);
  for (int i = 0; i < z.length; i++)
    z[i] = new Particle();
  z[0] = new OddballParticle();
 
}
void draw()
{
  background(0,0,0);
  for (int i = 0; i < z.length; i++) {
    z[i].show();
    z[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  Particle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*80;
    myColor = color(255,255,255);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 8, 8);
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = 1;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    noStroke();
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
  void move() {
    myX = myX + Math.cos(myAngle) / mySpeed;
    myY = myY + Math.sin(myAngle) / mySpeed;
  }
}

