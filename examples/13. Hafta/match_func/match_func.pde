String ornekMetin="Merhaba Dunya <div>Burası İstanbul</div>";
String BulunanKelime[] =match(ornekMetin,"<div>(.*?)</div>");
println(BulunanKelime[1]);

