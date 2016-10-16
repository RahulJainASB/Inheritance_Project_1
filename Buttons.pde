// This is the Button class.
// It is used to draw button and take action when pressed

class Button {

  float   rectX, rectY;        // Position of square button
  int     rectHeight;
  int     rectWidth;
  String  str;                 // String to display
  color   rectColor, baseColor;
  color   rectHighlight;
  color   currentColor;
  boolean rectOver = false;

  Button(String s, float x, float y, int w, int h) 
  {
    rectColor       = color(0);
    rectHighlight   = color(51);
    baseColor       = color(102);
    currentColor    = baseColor;
    rectX           = x;
    rectY           = y;
    rectWidth       = w;
    rectHeight      = h;
    str             = new String(s);
    rectOver        = false;
  }

  void draw() 
  {
    if (rectOver) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    stroke(225);
    strokeWeight(4); 
    rect(rectX, rectY, rectWidth, rectHeight);

    writeText();
  }

  // Writes the button text
  void writeText()
  {
    if ( rectOver) 
      fill(128);
    else
      fill(255);
    textSize(18);
    text (str, (rectX+50), (rectY+30));
  }

  // Checks if the mouse is over the button and sets the flag rectOver
  void update(int x, int y) {
    if ( overRect(rectX, rectY, rectWidth, rectHeight) ) {
      rectOver = true;
    } else {
      rectOver = false;
    }
  }

  boolean respondMousePressed(int x, int y) 
  {
    update(x, y);
    return rectOver;
  }

  boolean respondMouseReleased(int x, int y)
  {
    if (rectOver) {
      if (str.equals("Exit") ) 
      {
        exit();
      }
    }

    rectOver = false;
    return rectOver;
  }


  boolean overRect(float x, float y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height)
    {
      return true;
    } else
    {
      return false;
    }
  }
} // end of class