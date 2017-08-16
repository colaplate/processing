int[] erkek={11, 37, 59, 29};
int[] kadin={98, 19, 84, 73};
int[] sigara={103, 13, 74, 12};
void setup()
{
  size(800,800);
}
void draw()
{
  for (int i=0; i<4; i++)
  {
    fill(255);
    strokeWeight(1);
    ellipse(100+(i*200),400,200,200);
    fill(150);
    arc(100+(i*200),400,200,200,radians(270),radians(270)+radians(kadin[i]*360/(kadin[i]+erkek[i])) );
    noFill();  
    strokeWeight(10);
    arc(100+(i*200),400,200,200,radians(270),radians(270)+radians(sigara[i]*360/(kadin[i]+erkek[i])) );
  }
}
