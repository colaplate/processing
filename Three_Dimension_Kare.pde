void setup()
{
  size(400,400,P3D);
}

void draw()
{
  translate(width/2, height/2);
  rotate(radians(45));
  rect(-30, -30, 60, 60);
}
