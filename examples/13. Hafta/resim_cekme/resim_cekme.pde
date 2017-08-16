static String OAuthConsumerKey = "bsw3S1uLiVJ80JKlujMJaw";
static String OAuthConsumerSecret = "VtBTe3VImDlkFpwOPcSpz8P4KtKRtdv2giQpeczjk";
static String AccessToken = "14569935-zA1g6RE2r8g3vQlb89YkUlzAdgcCw3TPJARRUkGYi";
static String AccessTokenSecret = "afcHH66loKnXMUk8iGLaelqKDKsN5g1BrXIA2JPCYz5C5";
String keywords[] = {"car"};

TwitterStream twitter = new TwitterStreamFactory().getInstance();
PImage img;
boolean imageLoaded;

void setup()
{
  size(800, 600);
  noStroke();
  imageMode(CENTER);
  connectTwitter();
  twitter.addListener(listener);
  twitter.filter(new FilterQuery().track(keywords));
}

void draw()
{
  background(0);
  if (imageLoaded) image(img, width/2, height/2);
}

void connectTwitter()
{
  twitter.setOAuthConsumer(OAuthConsumerKey, OAuthConsumerSecret);
  AccessToken accessToken = loadAccessToken();
  twitter.setOAuthAccessToken(accessToken);
}

private static AccessToken loadAccessToken()
{
  return new AccessToken(AccessToken, AccessTokenSecret);
}

StatusListener listener = new StatusListener()
{
  public void onStatus(Status status)
  {
    println("@" + status.getUser().getScreenName() + " - " + status.getText());
    String imgUrl = null;
    String imgPage = null;    
    if (status.getMediaEntities() != null)
    {
      imgUrl= status.getMediaEntities()[0].getMediaURL().toString();
    }    
    else
    {
      if (status.getURLEntities().length > 0)
      {
        if (status.getURLEntities()[0].getExpandedURL() != null)
        {
          imgPage = status.getURLEntities()[0].getExpandedURL().toString();
        }
        else
        {
          if (status.getURLEntities()[0].getDisplayURL() != null)
          {
            imgPage = status.getURLEntities()[0].getDisplayURL().toString();
          }
        }
      }
      if (imgPage != null)
        imgUrl  = parseTwitterImg(imgPage);
    }
    if (imgUrl != null)
    {
      println("found image: " + imgUrl);
      if (imgUrl.startsWith("//"))
      {
        println("s3 weirdness");
        imgUrl = "http:" + imgUrl;
      }
      if (!imgUrl.endsWith(".jpg"))
      {
        byte[] imgBytes = loadBytes(imgUrl);
        saveBytes("tempImage.jpg", imgBytes);
        imgUrl = "tempImage.jpg";
      }
      println("loading " + imgUrl);
      img = loadImage(imgUrl);
      imageLoaded = true;
    }
  }

  public void onDeletionNotice(StatusDeletionNotice statusDeletionNotice)
  {
    
  }
  public void onTrackLimitationNotice(int numberOfLimitedStatuses)
  {
    
  }
  public void onScrubGeo(long userId, long upToStatusId)
  {
    
  }
  public void onException(Exception ex)
  {
    ex.printStackTrace();
  }
};

String parseTwitterImg(String pageUrl)
{
  for (int i=0; i<imageService.length; i++)
  {
    if (pageUrl.startsWith(imageService[i][0]))
    {
      String fullPage = "";  
      String lines[] = loadStrings(pageUrl); 
      for (int j=0; j < lines.length; j++)
        fullPage += lines[j] + "\n";
      String[] pieces = split(fullPage, imageService[i][1]);
      pieces = split(pieces[1], "\""); 
      return(pieces[0]);
    }
  }
  return(null);
}

String imageService[][] =
{ 
  { "http://yfrog.com",    "<meta property=\"og:image\" content=\""}, 
  {"http://twitpic.com",   "<img class=\"photo\" id=\"photo-display\" src=\""}, 
  {"http://img.ly",        "<img alt=\"\" id=\"the-image\" src=\"" }, 
  { "http://lockerz.com/", "<img id=\"photo\" src=\""}, 
  {"http://instagr.am/",   "<meta property=\"og:image\" content=\""}
};
