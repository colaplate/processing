int x=600, y=600, saat, dakika, a, i, j;
void setup ()
{
  background (0);
  size (x,y);
}
void draw ()
{
  stroke(255, 0, 0);
  strokeWeight (2.5);
  frameRate (100);
  saat=hour ()%12;
  dakika=minute ();
  if (a<saat)
  {
    line (i%x, 0+(a*50), i%y, 40+(a*50));
    i+=10;
    if (i==((a*600)+600))
      a++;
  }
  else
  {
    if (j<dakika)
    {
      stroke(0, 255, 0);
      line (i%x, 0+(a*50), i%y, 40+(a*50));
      i+=10;
      j++;
    }
  }
}
