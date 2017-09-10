float angle=0.0;
float offset=300;
float scalar=10;
float speed=0.05;
void setup ()
{
  size (600, 600);
  smooth ();
}
void draw ()
{
  //background (255);
  float x1=offset + sin (angle)*scalar;
  float y1=offset + cos (angle)*scalar;
  ellipse (x1, y1, 40, 40);
  angle+=speed;
  //scalar++;
}
