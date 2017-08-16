float i=800, a;
boolean c;
void setup ()
{
  size (800, 600);
  background (0);
}
void draw()
{
  stroke (a);
  line (i, 0, i, 600);
  if (c==false)
    i-=25;
  else
    i+=25;
  a+=255/32;
  if (i<0)
  {
    c=true;
    background (0);
    if (c==false)
      i=800;
    else
      i=0;
    a=0;
  }
  else if (i>800)
  {
    c=false;
    background (0);
    a=0;
  }
}
