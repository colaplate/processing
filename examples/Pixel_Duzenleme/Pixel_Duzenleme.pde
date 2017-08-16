PImage img;
int rpx;
void setup(){
  size(400,400);
  img = loadImage("araba.jpg");
  image(img,0,0);
}
void draw(){
  loadPixels();
  rpx=400*400/2;
  for(int i=0; i<rpx; i++)
    pixels[rpx+i]=pixels[i];
  updatePixels();
  

}
