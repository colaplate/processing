String ornekMetin="Merhaba Dunya <div>Burası İstanbul</div>";
ornekMetin+="<div>Burası Ankara</div><div>Burası da İzmir</div>";

String BulunanKelime[][] = matchAll(ornekMetin,"<div>(.*?)</div>");
println(BulunanKelime[0][1]);
println(BulunanKelime[1][1]);
println(BulunanKelime[2][1]);
