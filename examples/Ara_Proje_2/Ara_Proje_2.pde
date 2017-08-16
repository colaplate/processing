void setup()
{
  size (700,700);
}

void keyPressed()
{
  if ((keyCode == 0) || (keyCode == 1) || (keyCode == 2) ||
(keyCode == 3) || (keyCode == 4) || (keyCode == 5) || (keyCode == 6)
|| (keyCode == 7) || (keyCode == 8) || (keyCode == 9))
  {
    
  }
  else
    
}

void draw()
{
  
}

  PImage resim;
  resim=loadImage("Sample.jpg");
  for(int i=0; i<720; i+=36)
    for(int j=0; j<720; j+=36)
    {
      rect(i,j,36,36);
      resim.resize(36,36);
      image(resim,i,j);
    }
