java.util.List statuses=null;
	
	static String OAuthConsumerKey="";
	static String OAuthConsumerSecret="";
	static String AccessToken="";
	static String AccessTokenSecret="";
	
	Twitter twitter=new TwitterFactory().getInstance();
	String[] theSearchTweets= new String[200];
	
	
	
	void setup(){
	  twitterBaglantiKur();
	//  tweetGonder("Bu tweeti processing aracılığıyla yazıyorum. Yaşasın Processing!");
	//  kisininTimelineGetir();
	  aramaYap();
	
	
	}
	
	void draw(){
	
	}
	
	void tweetGonder(String t){
	  try{
	    Status status = twitter.updateStatus(t);
	    println("tweet başarıyla gönderildi.");
	  }catch(TwitterException e){
	    println("Gönderilen tweet başarısız oldu. Hata kodu="+e+" "+e.getStatusCode());
	
	  }
	}
	
	
	void twitterBaglantiKur(){
	  twitter.setOAuthConsumer(OAuthConsumerKey,OAuthConsumerSecret);
	  AccessToken accessToken=loadAccessToken();
	  twitter.setOAuthAccessToken(accessToken);
	}
	
	void kisininTimelineGetir(){
	  try{
	    statuses = twitter.getUserTimeline();
	  }catch(TwitterException e){
	    println("Timeline çekilemedi. Hata kodu="+e+" "+e.getStatusCode());  
	  }
	
	  for (int i=0; i<statuses.size(); i++){
	    Status status= (Status)statuses.get(i);
	    println(status.getUser().getName()+" : "+status.getText());
	  }
	}
	
	void aramaYap(){
	  String aranacakKelime="car";
	  try{
	    Query sorgu=new Query(aranacakKelime);
	    sorgu.count(100);
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