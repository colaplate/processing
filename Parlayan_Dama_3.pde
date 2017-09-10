float x=0, y=0;
boolean a=false, b=false, c=false;
void setup()
{
  size(420, 420);
  rectMode(CENTER);
}
void mouseReleased()
{
  c=true;
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
    if(c!=false)
    {
      x=0;
      y=0;
    }
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
      if(x>=0 && x<15 && a!=true)
      {
        x+=0.25;
        c=false;
      }
      else if (c!=false)
      {
        c=false;
        a=false;
      }
      else
      {
        a=true; 
        x-=0.25;
        if(x==0)
          a=false;
        c=false;
      }       
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
      if(y>=0 && y<15 && b!=true)
      {
        y+=0.25;
        c=false;
      }
      else if (c!=false)
      {
        c=false;
        b=false;
      }
      else
      {
        b=true; 
        y-=0.25;
        if(y==0)
          b=false;
        c=false;
      }  
    }
  }
}
