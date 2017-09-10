int a=1, i, x=400, y=100;
boolean geriDon;
void setup()
{
  size(x, y);
}
void draw()
{
  if((i>=400) || (geriDon!=false))
  {
    a=-1;
    geriDon=true;
    if(i<=0)
    {
      geriDon=false;
      a=1;
    }
  }
  color c=color(random(255), random(255), random(255));
  stroke(c);
  strokeWeight(25); 
  i=i+(a*8);
  line(i%x, 0, i%x, 100);
}
