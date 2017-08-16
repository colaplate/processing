class pacman{
  int x,y,cap;


pacman(int cx, int cy, int ccap){
  x=cx;
  y=cy;  
  cap=ccap;    
}

void agizAcik(){
  arc(x,y,cap,cap,radians(30),radians(330)); 
}
void agizKapali(){
  arc(x,y,cap,cap,radians(0),radians(360)); 
}


}
