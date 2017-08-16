void setup()
{
}
int RecCircle(int r)
{
  ellipse(50, 50, r, r);
  if(r<=10)
    return(10);
  else
    return(r*RecCircle(r-10));
}
void draw()
{
  RecCircle(80);
}
