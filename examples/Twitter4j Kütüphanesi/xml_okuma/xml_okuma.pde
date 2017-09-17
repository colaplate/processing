XML dosya;

void setup()
{
  dosya = loadXML("yemekler.xml");
  XML[] veriler = dosya.getChildren("makarna");  
  for(int i=0; i<3; i++)
  {
    println(veriler[i].getString("sos")+" "+veriler[i].getContent());
  }
}

void draw()
{
  
}
