int x=250, y=250;
void setup()
{
  size(500,500);
  background(255);
}
void draw()
{
  background(255);
  rectMode(CENTER);
  rect(x,y,50,50);
  if (keyPressed && keyCode==UP)
  {
    y-=5;
    fill(255,0,0);
  }
  if (keyPressed && keyCode==DOWN)
  {
    y+=5;
    fill(0,255,0);
  }
  if (keyPressed && keyCode==LEFT)
  {
    x-=5;
    fill(0,0,255);
  }
  if (keyPressed && keyCode==RIGHT)
  {
    fill(0);  
    x+=5;
  }
}

