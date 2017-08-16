int i=1;
void setup()
{
  size(1000,400);
  background(255);
}
void draw()
{
  background(255);
  rectMode(CENTER);
  rect(mouseX,mouseY,50+i,50+i);
  i++; 
}
