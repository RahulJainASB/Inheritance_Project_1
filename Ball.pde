


class Ball extends Circle
{
  private float   xSpeed;
  private float   ySpeed;
  private float   xDirection;
  private float   yDirection;
  
  private int sunToMoonDistance;

  // This is the constructer to build the brick
  Ball(float xPos, float yPos, int diameter)
  {
    super(xPos, yPos, diameter); // Calls the constructor of the base class
    xSpeed          = 1;
    ySpeed          = 5; 
    xDirection      = -1;
    yDirection      = -1;
    
    hue = moon.hue;
    saturation = 100;
    brightness = 100;
  }


  public void draw()
  {
    move();

     // you can use the base class's draw function
    //super.draw();  // This calls the draw function of the Circle class
     
    colorMode(HSB, 360, 100, 100);
    fill(hue, saturation, brightness);
    ellipse( getX(), getY(), getDiameter(), getDiameter());

    modifyHue();
    modifySize();
  }

  void modifyHue()
  {
    float value = getX();
    float start1 = (sun.getX() + sun.getRadius());
    float stop1 = (moon.getX() - moon.getRadius());
    float start2 = sun.hue;
    float stop2 = moon.hue;
    float newHue = map( value, start1, stop1, start2, stop2);
    
    hue = int(newHue);    
  }
  

  void modifySize()
  {
    float value = getX();
    float start1 = sun.getX();
    float stop1 = moon.getX();
    
    float stop2 = moon.getRadius() * .05;
    float start2 = sun.getRadius() * .5;
    
    float newRadius = map( value, start1, stop1, start2, stop2);
    setRadius( int(newRadius) );    
  }

  
  void move()
  {
    float x = getX() + (xSpeed * xDirection);
    
    if( xDirection < 0 )    // ball moving towards left - Sun
    {
      if( (x-getRadius()) <= (sun.getX() + sun.getRadius()) )
      {
        x = sun.getX() + sun.getRadius() + getRadius();
        xDirection = +1;
      }
    }
    else            // ball moving towards right - Moon
    {
      if( (x+getRadius()) >= (moon.getX() - moon.getRadius()) )
      {
        x = moon.getX() - moon.getRadius() - getRadius();;
        xDirection = -1;
      }
    }
    setX(x);
  }
} //end of class Ball