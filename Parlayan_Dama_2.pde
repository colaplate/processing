float x=0, y=0;
boolean a=true, b=true;
void setup()
{
  size(420, 420);
  rectMode(CENTER);
}
void draw()
{
  background(255);
  for(int i=0; i<8; i++)
    for(int j=0; j<4; j++)
    {
      fill(0);
      stroke(0);
      if(i==1 || i==3 || i==5 || i==7)
        rect(85+(j*2*50), 35+(i*50), 50, 50);
      else
        rect(35+(j*2*50), 35+(i*50), 50, 50);
    }
  for(int i=0; i<8; i++)
    for(int j=0; j<4; j++)
    {
      fill(255);
      stroke(0);
      if(i==0 || i==2 || i==4 || i==6)
        rect(85+(j*2*50), 35+(i*50), 50, 50);
      else
        rect(35+(j*2*50), 35+(i*50), 50, 50);
    }
  if(mousePressed)
  {
    if(mouseButton==LEFT)
    {
      for(int i=0; i<8; i++)
        for(int j=0; j<4; j++)
        {
          fill(0);
          stroke(255);
          if(i==1 || i==3 || i==5 || i==7)
          {
            rect(85+(j*2*50), 35+(i*50), 50+x, 50+x);
          }
          else
            rect(35+(j*2*50), 35+(i*50), 50+x, 50+x);
        }
      if(x>=0 && x<15 && a!=false)
        x+=0.25;
      else
      x=0;      
    }
    if(mouseButton==RIGHT)
    {
      for(int i=0; i<8; i++)
        for(int j=0; j<4; j++)
        {
          fill(255);
          stroke(0);
          if(i==0 || i==2 || i==4 || i==6)
            rect(85+(j*2*50), 35+(i*50), 50+y, 50+y);
          else
            rect(35+(j*2*50), 35+(i*50), 50+y, 50+y);
        }
      if(y>=0 && y<15 && b!=false)
        y+=0.25;
      else
        y=0;  
    }
  }
}
