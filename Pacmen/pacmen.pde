pacman[] a= new pacman[10];
Boolean ak=false;
float b,c;
void setup(){
  size(400,400);
  noStroke();  
  for (int i=0; i<a.length; i++){
    b=random(0,400);
    c=random(0,400);
    a[i]= new pacman(int(b),int(c),40);
  }
}
void draw(){
  frameRate(5);
  background(0);
  for (int i=0; i<a.length; i++){ 
    if (ak==true){
      a[i].agizKapali();
    }else
      a[i].agizAcik();    
  }
    if (ak==false)
    ak=true;
    else
    ak=false;
}

