void setup()
{
  size(400,400);
}
void draw()
{
  background(255);
  rect(100,100,200,200);
  if (mousePressed)
  {
    if (mouseButton == LEFT)
    { 
      background(255);
      ellipse(200,200,100,100);
    }
    if (mouseButton == RIGHT)
    {
      background(255);
      triangle(200,100,100,300,300,300);
    }
  }
}
