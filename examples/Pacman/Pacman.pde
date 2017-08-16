int agiz=0;
int acikKapali=0;
void setup(){
  size(400,400);
  noStroke();  
}
void draw(){
  frameRate(5);
  background(0);  
  if (acikKapali%2==0)
    agiz=30;
  else
    agiz=0;    
  arc(20,20,40,40,radians(30-agiz),radians(320+agiz)); 
  acikKapali++;
}

