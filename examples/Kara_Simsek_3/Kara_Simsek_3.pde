int a=1, i, x=400, y=100;
color c=color(255, 0, 0);     
boolean geriDon;
void setup()
{
  size(x, y);
  background(0);
}
void draw()
{
  stroke(c);
  strokeWeight(10); 
  if((i>=400) || (geriDon!=false))
  {
   //   background(0);
    a=-1;
    geriDon=true;
    stroke(c+50);
    if(i<=0)
    {
      a=1;      
      geriDon=false;
      c=color(255, 0 , 0);
      stroke(c);
    }
  }
  i=i+(a*12);
  line(i%x, 0, i%x, 100);
  stroke(0);
  line((i%x)-30, 0, (i%x)-30, 100);
}
