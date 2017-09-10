size(600,400);
background(255);
for (int i=0;i<800;i+=30) 
  for (int j=0;j<500;j+=30)
  {
   fill(0);
   ellipse(i,j,5,5); 
   stroke(255,0,0);
   line(i,j,300,200);
  }
