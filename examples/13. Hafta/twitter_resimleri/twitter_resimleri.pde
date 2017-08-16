String satirlar[]=loadStrings("http://ksahin.com/twitter/index.php?twitter_keywords=%23playstation&lang=all&result_type=recent&lat=41.124309&lon=29.011076&distance=100&mikm=mi");
String resim[];
PImage res;
int mesafe=0;
void setup ()
{
  size(800,800);
  println("satır sayısı = "+satirlar.length);
  for(int i=29; i<75; i++)
  {
    resim=match(satirlar[i],"<div class=\"tweet_pic\"><img src=\"(.*?)\" align=\"left\" class=\"imagepad\"");
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
