Bacteria [] colony;

void setup()   
{     
  size(500,500);
  background(255);
  colony = new Bacteria[35];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   

void draw()   
{    
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].show();
    colony[i].move();
  }
}     

void mousePressed()
{
  background(255);
  redraw();
}

class Bacteria    
{     
  int x, y, z;
  Bacteria()
  {
    x = 250;
    y = 250;
    z = (int)(Math.random() * 255);
  }
  void move()
  {
    x+=(int)(Math.random() * 7) - 3;
    y+=(int)(Math.random() * 7) - 3;
  } 
  void show()
  {
    fill(35,z,35);
    ellipse(x,y,5,5);
  }
}
