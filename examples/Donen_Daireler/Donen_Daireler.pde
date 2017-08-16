float angle= 0.0, offset= 400, scalar= 300, speed= 0.03, x1, y1;

void setup ()
{
  size(800,800);
}

void draw ()
{
  fill (0);
  noStroke ();
  background (255);  
  ellipse (400, 400, 400, 400);
  for (int i=0; i<226; i+=45)
  {
    y1 = offset+sin (angle+i)*scalar;  
    x1 = offset+cos (angle+i)*scalar;    
    ellipse (x1, y1, 200, 200);
  }
  angle+= speed;  
}
