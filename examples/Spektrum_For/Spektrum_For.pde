int i, x=400, y=100;
void setup()
{
  size(x, y);
}
void draw()
{
  for(int j=0; j<5; j++)
  {
    color c=color(random(255), random(255), random(255));
    stroke(c);
    strokeWeight(5);
    line(i%x, 0, i%x, 100);
    i+=2;
  }
}
