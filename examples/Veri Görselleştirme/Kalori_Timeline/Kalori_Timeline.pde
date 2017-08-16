String [] zaman={"03:40","07:45","08:10","09:20","10:00","10:30","12:00","13:00","14:45","16:20","17:30","19:00","19:20","21:00"};
int [] kalori={40,84,53,45,175,84,15,106,285,170,100,80,45,65};
String [] yemek={"AA","Food","Eggs and Toast","Coffee and Cream","Chips and Juice","Rice & Chicken","Soda (12 oz)","Celery Sticks","Cliff Bar","Chicken Curry and Veggies","Chocolate Cake","Red Wine","Toast and Jam","Mug of Tea with honey"};
int x;
void setup(){
  size(800,800);
  background(255);
  stroke(0);
  line(0,400,800,400); 
  noSmooth();  
}

void draw(){ 
 for (int i=0; i<1440; i+=30) {
   if (i%60==0)
    strokeWeight(4);
   else
    strokeWeight(1);   
   line(i*800/1440,395,i*800/1440,405);

 }
  
  for (int i=0; i<zaman.length; i++){
    String[] dakika;
    dakika=split(zaman[i],":");
    x=(int(dakika[0])*60+int(dakika[1]))*800/1440;
    noFill();
    ellipse(x,400,kalori[i],kalori[i]);
    fill(0);
    pushMatrix();   
    translate(x,400-(kalori[i]/2)-10);            
    rotate(radians(-45));     
    text(yemek[i],0,0);    
    popMatrix();
  }    
}


