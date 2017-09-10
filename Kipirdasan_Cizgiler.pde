void setup ()
{
  size (200, 200);
  frameRate (15);
}

void draw ()
{
  background(255);  
  for (int i=0; i<10; i++)
  line(5+(i*20)+int(random(-5,5)), 10, 5+(i*20)+int(random(-5,5)), 190);
}
