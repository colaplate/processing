int x, y;
void setup()
{
  size(500, 500);
}
void stairs(int x, int y, int nsteps)
{
  for(int i=0; i<nsteps; i++)
    rect(x+(i*10), y, 10, 50);
}
void draw()
{
  stairs(10,10,15);
  stairs(100,200,13);
  stairs(300,200,10);
}
