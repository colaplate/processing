int a=1, i, x=400, y=100;
color c=color(random(255), random(255), random(255));     
boolean geriDon;
void setup()
{
  size(x, y);
}
void draw()
{
  stroke(c);
  strokeWeight(10); 
  if((i>=400) || (geriDon!=false))
  {
    a=-1;
    geriDon=true;
    stroke(c+50);
    if(i<=0)
    {
      a=1;      
      geriDon=false;
      c=color(random(255), random(255), random(255));
      stroke(c);
    }
  }
  i=i+(a*12);
  line(i%x, 0, i%x, 100);
}
