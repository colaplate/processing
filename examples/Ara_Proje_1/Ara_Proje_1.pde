int i, j, k;
boolean a;
void setup ()
{
  size (400, 400);
  background (0);
  rectMode (CENTER);
}  
void draw ()
{
  if (i<=275)
  {
    i++;
    rect (-75+i, 200, 150, 150);
  }
  else if (j<=250 && a!=true)
  {
    j++;
    rect (200, 200, 150+j, 150+j);
  }
  else if (j>250 || a!=false) 
  {
    j--;
    a=true;
    if (j<=0 && a!=false)
    {
      j=1;
      k++;
    }
    rect (200+k, 200, 150+j, 150+j);
  }
}
