float i=0;
void dk (float w,float h)
{
  rect (0,0,w,h);
  ellipseMode (CORNER);
  ellipse (0,0,w,h);
}
void setup ()
{
  size (400,400);
}
void draw ()
{ 
  if (i<400)
  {
    dk (i,i);
    i+=10;
  }
}
