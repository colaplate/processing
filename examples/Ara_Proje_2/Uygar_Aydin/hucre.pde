class Elips {
  
  // Elipslerin boyut, başlangıç koordinatı ve renk geçisişi sağlamak için kullanılan açı değerinin tutulacağı değişkenler tanımlanıyor
  float x,y;   // x,y elipsleri başlangıç koordinatlarını tutacak
  float w,h;   // elipslerin genişlik ve yükseklik değerini tutacak
  float aci; // renk geçişi sağlamak için açı değerini tutacak
  
  
  //Class'ımızın constructor fonksiyonunu tanımlıyoruz ve fonksiyonu çağıracağımız sayfadan gelecek olan parametleri, bu parametreleri tutumak için class'ımızın başında tanımladığımız
  //değişkenlerimize aktarıyoruz. 
  Elips(float gelenX, float gelenY, float gelenW, float gelenH, float gelenAci ) {
    x = gelenX;
    y = gelenY;
    w = gelenW;
    h = gelenH;
    aci = gelenAci;
  } 
  
  //Parametre olarak gelen açı değerini kademeli olarak arttırıyoruz.
  void renkGecis() {
    aci += 0.02; 
  }

  //cizimi görüntülemek için
  void display() {
    stroke(255);
    // Açı değerinin sinüsünü ve mouse koordinat değerlerini fill fonksiyonuna parametre olarak göndererek her mouse hareketinde farklı renklerin oluşması ve renk geçisi sağlanıyor.
    fill((mouseX/10)+100*sin(aci),(mouseY/5)+100*sin(aci),(mouseX/5)+100*sin(aci));
    ellipse(x,y,w,h);
  }
 
 //yapılan çizimi hafızada tutabilmek için fonksiyonu çağırdığımız sayfadan parametre olark gelen boş PGraphics nesnesinin içini çizimimizle doldurarak tekrar geri gönderiyoruz
 PGraphics resimAl(PGraphics gelenPg) {
    
    gelenPg.beginDraw();
    gelenPg.stroke(255);
    gelenPg.fill((mouseX/10)+100*sin(aci),(mouseY/5)+100*sin(aci),(mouseX/5)+100*sin(aci));
    gelenPg.ellipse(x,y,w,h);
    
    gelenPg.endDraw();
    
    return gelenPg;
    
  }
}
