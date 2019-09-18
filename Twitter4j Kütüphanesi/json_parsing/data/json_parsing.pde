JSONArray veriler;
	
	void setup(){
	  veriler = loadJSONArray("veriler.json");
	  for (int i=0; i<veriler.size(); i++){
	    JSONObject ogrenciler=veriler.JSONObject(i);
	    int id=ogrenciler.getInt("id"); 
	    String adi=ogrenciler.getString("adi");
	    String soyadi=ogrenciler.getString("soyadi");    
	    println(id +"nolu öğrencinin adı ve soyadı ="+adi+" "+soyadi);
	  }
	}
	
	void draw(){
	
	}