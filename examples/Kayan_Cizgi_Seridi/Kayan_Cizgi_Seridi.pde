int i, a, x=400, y=400;
void setup()
{
  size(x,y);
}
void draw()
{
  
  line(i%x, 0+(a*100), i%y, 100+(100*a));
  i++;
  if((i==400) || (i==800) || (i==1200))
    a++;
}

