// Base class: Circle 
// It stores all the data members that are required to draw a circle

class Circle
{
  private float  _x;          // This is private so only its members can access this member by its name
  private float  _y;          // This is private so only its members can access this member by its name
  private int    _diameter;   // Diameter of the circle
  private int    _r, _g, _b;  // R, G, B - color
  
  public  int hue;
  public  int saturation;
  public  int brightness;

  // Constructor
  Circle()
  {
    _x = 100; 
    _y = 100;
    _diameter = 25;
    _r = _g = _b = 50;
  }
  
  // Constructor
  Circle(float xPos, float yPos, int d)
  {
    _x       = xPos; 
    _y       = yPos;
    _diameter  = d;
    _r = _g = _b = 50;
  }
  
  // function to draw a circle
  public void draw()
  {
    fill(_r, _g, _b);
    ellipse(_x, _y, _diameter, _diameter);
  }
  
  // Get and Set functions
  void setColor(int r, int g, int b)
  {
    _r = r;
    _g = g;
    _b = b;
  }
  
  public  float getX() { return _x; }
  public  float getY() { return _y; }
  public  int   getDiameter() { return _diameter; }
  public  int   getRadius() { return (_diameter/2); }
  public  int   getRColor() { return _r; }
  public  int   getGColor() { return _g; }
  public  int   getBColor() { return _b; }
  
  public  void setX(float xPos) { _x = xPos; }
  public  void setDiameter(int dia) { _diameter = dia; }
  public  void setRadius(int r) { _diameter = 2 * r; }
   
}  // end of class Circle