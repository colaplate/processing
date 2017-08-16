int x,y=0;
int a=0;
void setup()
{
  size(500,500);
  background(255,255,255);
}
void draw()
{
  background(255,255,255);
  fill(0);
  if (x==(a*10) && y<490-(a*10))
  {
    x=a*10;
    y+=10;  
  }
  else if (y==490-(a*10) && x<490-(a*10))
  {  
    y=490-(a*10);
    x+=10;  
  }
  else if (x==490-(a*10) && y>0+(a*10))
  {
    x=490-(a*10);
    y-=10;
  }
  else if (y==0+(a*10) && x>0+(a*10))
  {
    y=0+(a*10); 
    x-=10;
  }
  if (y==(a*10) && x==(a*10)+10)
  {
    a++;
    println(a+".tur");
  }
  rect(x,y,10,10);
}
