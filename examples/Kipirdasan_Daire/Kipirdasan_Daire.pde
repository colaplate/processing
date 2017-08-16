sekil a= new sekil(20,20,40);

void setup()
{
  size(400,400);
}

void draw()
{
  a.display();
  a.move();  
}

class sekil
{
  float x;
  float y;
  int yCap;
  float hiz= 2.5;
  
  sekil(float cX, float cY, int cyCap)
  {
    x = cX;
    y = cY;
    yCap= cyCap;
  }
  
  void move()
  {
    x += random(-hiz, hiz);
    y += random(-hiz, hiz);
  }
  
  void display()
  {
    ellipse(x, y, yCap, yCap);
  }
}
