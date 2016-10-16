// 
//  Class Moon. It extends the base class Circle
//


class Moon extends Circle
{
  Moon(float xPos, float yPos, int diameter)
  {
    super(xPos, yPos, diameter); // Calls the constructor of the base class

    // Sets the color for the Moon
    hue         = 220;
    saturation  = 100;
    brightness  = 100;
  }

  // Draw the Moon
  public void draw()
  {
 
    // Draw the moon bluish white in color with bright light
    // Draw concentric colors in varying blue color to give the look of moom
    
    int numCircles = 50;
    noStroke();
    colorMode(HSB, 360, 100, 100);
    //blendMode(DARKEST);
    for (int i = 0; i < numCircles; i++)
    {
      fill( (hue+(i/10)), (i+1)*2, 100);
      ellipse(getX(), getY(), (getDiameter()*(numCircles-i)/numCircles), (getDiameter()*(numCircles-i)/numCircles));
    }
    blendMode(BLEND);
  }
} //end of class Moon