static String consumerKey = "NkRlbpAHycZlnFTTAiNrcA";
static String consumerSecret = "YfoBvQK1r6hix2IkMbxleym932Vq6F5ReonLg9GDrM";
static String AccessToken = "54623597-1esHrcZ4zy0tHbL9f7pEMyh95s7SyDo3IdLWlTvus";
static String tokenSecret = "X6x6XU5hfUp1s9Waj59IeFGMZlaWmodH0LQcirMSc8GxA";

TwitterStream twitter = new TwitterStreamFactory().getInstance();
String kelime[]={"cemaat"};

void setup()
{
  size (800, 600);
  connectTwitter();
  twitter.addListener (dinleyici);
  twitter.filter (new FilterQuery().track (kelime));
}

void connectTwitter()
{
  twitter.setOAuthConsumer (consumerKey, consumerSecret);
  AccessToken at = loadAccessToken();
  twitter.setOAuthAccessToken (at);
}

private static AccessToken loadAccessToken()
{
  return new AccessToken (AccessToken, tokenSecret);
}

StatusListener dinleyici = new StatusListener()
{
  public void onStatus (Status s)
  {
    println("@"+s.getUser().getScreenName()+ " "+s.getText()); 
  }
  public void onDeletionNotice (StatusDeletionNotice sdn)
  {
    //println (sdn);
  }
  public void onScrubGeo (long Us, long ups)
  {
    // println (us+ups);  
  }
  public void onTrackLimitationNotice (int sinir)
  {
    // println (sinir);
   }
  public void onException (Exception ex)
  {
    ex.printStackTrace();
  }
};
