java.util.List statuses=null;
	
	static String OAuthConsumerKey="";
	static String OAuthConsumerSecret="";
	static String AccessToken="";
	static String AccessTokenSecret="";
	
	Twitter twitter=new TwitterFactory().getInstance();
	String[] theSearchTweets= new String[200];
	
	
	
	void setup(){
	  twitterBaglantiKur();
	  aramaYap();
	
	
	}
	
	void draw(){
	
	}
	
	
	void twitterBaglantiKur(){
	  twitter.setOAuthConsumer(OAuthConsumerKey,OAuthConsumerSecret);
	  AccessToken accessToken=loadAccessToken();
	  twitter.setOAuthAccessToken(accessToken);
	}
	
	void aramaYap(){
	  String aranacakKelime="#SükutunÇığlıkları";
	  try{
	    Query sorgu=new Query(aranacakKelime);
	    sorgu.count(100);
	    sorgu.setSince("2014-01-06");
	    sorgu.setUntil("2014-01-20");    
	    sorgu.geoCode(new GeoLocation(41.005270,28.976960),200, Query.KILOMETERS);
	    QueryResult sonuc=twitter.search(sorgu);  
	    ArrayList tweetler=(ArrayList)sonuc.getTweets();  
	    for(int i=0; i<tweetler.size(); i++){
	      Status t=(Status)tweetler.get(i);
	      User kullanici=(User)t.getUser();
	      String u=kullanici.getName();
	      String msg=t.getText();
	      Date d=t.getCreatedAt();
	      theSearchTweets[i]=msg.substring(aranacakKelime.length()+1);
	      println(theSearchTweets[i]);
	    }    
	
	
	  }catch(TwitterException e){
	    println("Arama işlemi başarısız. Hata Kodu="+e);
	  }
	}
	
	
	private static AccessToken loadAccessToken(){
	  return new AccessToken(AccessToken, AccessTokenSecret);
	}