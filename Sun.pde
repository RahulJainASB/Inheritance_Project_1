// 
//  Class Sun. It extends the base class Circle
//

class Sun extends Circle
{
  Sun(float xPos, float yPos, int diameter)
  {
    super(xPos, yPos, diameter); // Calls the constructor of the base class
    //setColor(242,204,47);

    // Sets the color for the Sun
    hue         = 50;
    saturation  = 100;
    brightness  = 100;
  }

  // Draw the Sun
  public void draw()
  {
    // Draw the sun yellow in color with bright light
    // Draw concentric colors in varying yellow color to give the look of sun
    //
    int numCircles = 50;
    noStroke();
    colorMode(HSB, 360, 100, 100);
    //blendMode(DARKEST);
    for (int i = 0; i < numCircles; i++)
    {
      fill( (hue+(i/10)), (i+20)*2, 100);
      ellipse(getX(), getY(), (getDiameter()*(numCircles-i)/numCircles), (getDiameter()*(numCircles-i)/numCircles));
    }
    blendMode(BLEND);
    // Draw the rays
    drawRays();
  }

  // Draw sun's rays. 
  // Alternate short and long ray lines
  void drawRays()
  {
    float angleIncrement = .01;
    int raySize = +1;
    float x1, y1, x2, y2;
    float r = getRadius();
    float rLong = r * 1.5;
    float rShort = r * 1.25;


    for ( float theta = 0; theta < 2*PI; theta+= angleIncrement)
    {
      // Find the (x,y) on the top of the circle
      x1 = polarToX(r, theta) + getX();
      y1 = polarToY(r, theta) + getY();

      // Find the (x2, y2) for the end of the ray
      if ( raySize > 0 )
      {
        // Draw long ray
        x2 = polarToX(rLong, theta) + getX();
        y2 = polarToY(rLong, theta) + getY();
        stroke( getRColor(), getGColor(), getBColor());
      } else
      {
        // Draw short ray
        x2 = polarToX(rShort, theta) + getX();
        y2 = polarToY(rShort, theta) + getY();
        stroke( getRColor()+80, getGColor()-40, getBColor());
      }
      raySize *= -1;
      
      strokeWeight(2);
      line(x1, y1, x2, y2);
    }
  }

  // Convert polar coordinate to X-Y
  float polarToX(float r1, float theta)
  {
    return (r1 * cos(theta));
  }
  float polarToY(float r1, float theta)
  {
    return (r1 * sin(theta));
  }
} //end of class Sun