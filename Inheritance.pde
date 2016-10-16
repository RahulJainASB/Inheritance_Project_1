// 
//  Inheritance by Rahul Jain
//  This project illustrates a circular object moving betwee the Sun and the Moon
//  Inheritance is used in this example




Ball      ball;
Sun       sun;
Moon      moon;
Button    exitButton;


void setup()
{
  fullScreen();
  sun              = new Sun(   ((width/20)+400), 500, 400);
  moon             = new Moon( ((width*10/20)+400), 500, 250);
  exitButton       = new Button("Exit", 300, 20, 150, 50);
  ball             = new Ball( 900, moon.getY(), 100);
}

// Main draw function. 
void draw() 
{
  background(124);

  sun.draw();
  moon.draw();
  exitButton.draw();

  ball.draw();
}


// Responds to mouse pressed
void mousePressed()
{
  //println("Mouse clicked");
  exitButton.respondMousePressed(mouseX, mouseY);
}

// Responds to mouse released
void mouseReleased()
{
  //println("Mouse clicked");
  exitButton.respondMouseReleased(mouseX, mouseY);
}