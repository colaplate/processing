String satirlar[]=loadStrings("http://www.ksahin.com/twitter/index.php?twitter_keywords=mimar+sinan&lang=all&result_type=mixed&lat=&lon=&distance=100&mikm=mi");
String resim[];
String tweet[];
String tarih[];
PImage res;
int mesafe=0;
void setup ()
{
  size(800,800);
  println("satır sayısı = "+satirlar.length);
  for(int i=29; i<75; i++)
  {
    resim=match(satirlar[i],"<div class=\"tweet_pic\"><img src=\"(.*?)\" align=\"left\" class=\"imagepad\"");
    tweet=match(satirlar[i],"<div class=\"tweet_name\">(.*?)<br />(.*?)<br />");
    tarih=match(satirlar[i],"<br /><small>(.*?)</small>");
    fill(0);
    if (tarih!=null)
      text(tarih[1],60,mesafe-15);
    if (tweet!=null)
      text(tweet[2],60,mesafe-30);
    if (resim!=null)
    {
      res = loadImage(resim[1]);
      image(res,10,mesafe);
      mesafe+=48;
    }  
  }
}

void draw()
{
  
}
