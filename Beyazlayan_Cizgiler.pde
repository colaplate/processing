float i=800, a;
void setup ()
{
  size (800,600);
  background (0);
}
void draw()
{
  stroke (a);
  line (i,0,i,600);
  i=i-25;
  a+=255/32;
  if (i<=0)
  {
    background (0);
    i=800;
    a=0;
    stroke (a);
    line (i,0,i,600);
    i=i-25;
    a+=255/32;
  }
}
