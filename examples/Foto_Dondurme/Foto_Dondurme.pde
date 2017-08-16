size(800,400,P3D);
PImage myImg=loadImage("Araba.jpg");
image(myImg,0,0);
pushMatrix();
rotateY(radians(180));
translate(-1200,0);
image(myImg,400,0);
popMatrix();

pushMatrix();
rotateX(radians(180));
translate(0,-600);
image(myImg,0,200);
popMatrix();


translate(400,200);
rotateZ(radians(180));
translate(-400,-200);
image(myImg,0,0);

