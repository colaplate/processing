//ismi birHucre türü Elips olan nesnemizi tanımlıyoruz
Elips[][] birHucre;

int kontrol=0;
PGraphics pg;
int cols = 1;
int rows = 1;

void setup() {
  size(900,500);
  pg = createGraphics(230, 150);
}


//mouse'un sağ clik olayında bloklarımızın küçülmesini, sol click olayında da büyümesini sağlıyoruz
void mouseClicked() {
  
  if ((cols<20) && (rows<11) && (mouseButton == LEFT)){
    
     cols+=2;
     rows++;
     pg.clear();
     
  } else if ((rows-1>0) && (mouseButton == RIGHT)) {

     cols-=2;
     rows--;
     pg.clear();
  }
  
}
  

void draw() {
  
  if (kontrol==0){
    
    //satır ve sutün sayısına bağlı birHucre dizisini oluşturduk
    birHucre = new Elips[cols][rows];
    
      for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
          
          //dizinin her elemanına i ve j değerlerini baz alarak elipsler tanımladık
          birHucre[i][j] = new Elips(i*10+20,j*10+20,10,10,i+j);
          
        }
      }  
  
  background(0);
  
      for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
          
          //dizinin her elemanına ait elipsin rengini belirliyoruz, görüntülüyoruz ve PGraphic nesnemize bir kopyasını atıyoruz. 
          birHucre[i][j].renkGecis();
          birHucre[i][j].display();
          birHucre[i][j].resimAl(pg);
      
        }
      }
  
  } else if (kontrol==1) {
    //class'dan gelen Pgraphics nesnesini belirlediğimiz koordinatlara göre ekrana basıyoruz
      for (int koorY = 0; koorY < 361; koorY+=120) {
        for (int koorX = 0; koorX < 661; koorX+=220) {
           image(pg,koorX,koorY,230,150);
        } 
      }
      //ekrana basılan görüntüyü jpeg olarak kaydediyoruz
      save("proje.jpg");
      
    }
}

void keyPressed() {
  if (keyPressed) {
    //boşluk tuşuna basıldığında çizimin durması için kontrol değişkenimizin değerini 1 yapıyoruz
    if (key == ' ') {
      background(0);
      kontrol=1;
      
    } else if (key == 'r') {
      //r' ye basıldığında programın yeniden bağlaması için değerleri sıfırlayıp, Pgraphic nesnemizin içerisini temizliyoruz
      kontrol=0;
      cols = 1;
      rows = 1;
      pg.clear();
    }
  }
  


    


}
