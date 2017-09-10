Car a=new Car();
Car b=new Car() ;
void setup()
{
  size(800,200);
  a.yukle();
  b.yukle();
  a.c=color(0,255,0);
  b.c=color(0,0,255);
  b.s=0.5;
}
void draw()
{
  background(255);
  if(mousePressed)
    a.zoomin();
  a.goruntule();
  a.hareket();
  b.goruntule();
  b.hareket();
}
