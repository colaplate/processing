size(800,400,P3D);
PImage img,img2;

img = loadImage("Araba.jpg");
img2 = loadImage("Mask.jpg");
img.mask(img2);

image(img, 0,0);
rotateY(radians(180));
translate(-600,0);
image(img,200,0);
