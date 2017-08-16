class Car
{
  color c;
  float xp;
  float yp;
  float s;
  float aci=0.1;
  float xx,yy;
  
  Car()
  {
    c=color(255,0,0);
    s=1;
  }
  void yukle()
  {
    xp=0;
    yp=height/2;
  }
  void goruntule()
  {
    rectMode(CENTER);
    fill(c);
    rect(xp,yp,20,10);
    xx=cos(aci)*1;
    yy=sin(aci)*1;       
    rect((xp-10)+xx,yp+5+yy,10,10);
    xx=cos(aci)*1;
    yy=sin(aci)*1;         
    rect(xp+10+xx,yp+5+yy,10,10);    
    aci+=0.5;
  }
  void hareket()
  {
    xp=xp+s;
  }
  void zoomin()
  {
    scale(2);
    translate(-50,-50);
  }
}
