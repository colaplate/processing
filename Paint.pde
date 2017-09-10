void setup()
{
  size(1270,680);
  background(255);
}
void draw()
{
  if (mousePressed)
  {
    if (mouseButton==LEFT)
    { 
      fill(0);
      rectMode(CENTER);
      ellipse(mouseX,mouseY,15,15); 
    }
    if (mouseButton==RIGHT)
    {
      fill(255);
      stroke(255);
      rectMode(CENTER);
      ellipse(mouseX,mouseY,15,15);
    }
  }
}
