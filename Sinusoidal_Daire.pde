float angle=0.0;
float offset=40;
float scalar=60;
float speed=0.01;
int x1=0;
void setup ()
{
  size (800, 120);
  smooth ();
}
void draw ()
{
  //background (255);
  float y1=offset + sin (angle)*scalar;
  ellipse (x1, y1, 40, 40);
  angle+=speed;
  x1+=1;
}
