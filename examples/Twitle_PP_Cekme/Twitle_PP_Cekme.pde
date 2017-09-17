java.util.List statuses=null;

static String OAuthConsumerKey="ZDMUUZYbm7BCuRPS2AODg";
static String OAuthConsumerSecret="I9jzlmkNkDNFJ9nbpLJU16aLOi1krDBrZ7zAdtDBO4";
static String AccessToken="141340278-jRt0YtejDSUUYAcFTyh1ktIrLT4aZCMZ4MO8OXCK";
static String AccessTokenSecret="IHzPRp1rnHQMDgUo1cnZGRl9Wl35rxnljcMK6c5U35h5m";

Twitter twitter=new TwitterFactory().getInstance();
String[] theSearchTweets= new String[400];
int i=0, x=0, y=0;
int kontrol =0;
PImage img;
ArrayList tweetler;

void setup()
{
  size(720,360);
  twitterBaglantiKur();
  aramaYap("#hayat",1000000);  
}

void draw()
{ 
  if (i!=tweetler.size())
  {
      Status t=(Status)tweetler.get(i);
      User kullanici=(User)t.getUser();
      img = loadImage(kullanici.getProfileImageURL());
      img.resize(36,36);
      image(img, x, y);
      i++;   
      x+=36;   
      if (x%720==0)
      {
        y+=36;
        x=0;
      }
  }
}

void twitterBaglantiKur()
{
  twitter.setOAuthConsumer(OAuthConsumerKey,OAuthConsumerSecret);
  AccessToken accessToken=loadAccessToken();
  twitter.setOAuthAccessToken(accessToken);
}

void aramaYap(String aranacakKelime,int tweetSayisi)
{
  try
  {
    Query sorgu=new Query(aranacakKelime);
    sorgu.count(tweetSayisi);
    QueryResult sonuc=twitter.search(sorgu);  
    tweetler=(ArrayList)sonuc.getTweets();  
  }
  catch(TwitterException e)
  {
    println("Arama işlemi başarısız. Hata Kodu="+e);
  }
}

private static AccessToken loadAccessToken()
{
  return new AccessToken(AccessToken, AccessTokenSecret);
}
