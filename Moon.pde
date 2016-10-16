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
    // Draw the Moon in white color
    // Since we have not written it, calling the base class's draw function
    //fill(200);
    //noStroke();
    //ellipse(getX(), getY(), getRadius()+50, getRadius());

    /*
    size(1000, 1000, P3D);
     noStroke();
     fill(0, 51, 102);
     ambientLight(102, 102, 102);
     lightSpecular(204, 204, 204);
     directionalLight(102, 102, 102, 0, 0, -1);
     specular(255, 255, 255);
     translate(getX(), getY(), 0);
     shininess(5);
     sphere(getRadius());
     */


    // Draw the moon bluish white in color with bright light
    // Draw concentric colors in varying blue color to give the look of moom
    //
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