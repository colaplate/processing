int i, x=400, y=100;
boolean a;
void setup()
{
  size(x, y);
}
void draw()
{
  color c=color((i+random(100))%255, (i+random(100))%255, (i+random(100))%255);
  stroke(c);
  strokeWeight(5);
  line(i%x, 0, i%x, 100);
  i+=5;
}
