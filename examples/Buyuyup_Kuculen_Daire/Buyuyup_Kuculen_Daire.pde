float buyutmeOrani=0.5;
int a=1;
void setup ()
{
  size(800,800);  
}
void draw ()
{
  if (buyutmeOrani>4)
    a=-1;
  if (buyutmeOrani<0)  
    a=+1;
  scale (buyutmeOrani);  
  background (255);
  ellipse (400/buyutmeOrani, 400/buyutmeOrani, 200, 200);  
  buyutmeOrani+=(a*0.1);  

}

