  
PImage photo;
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int SA = 0;
int SB = 150;
int EA = 0;
int EB = 150;
void setup()
{
  noLoop();
  photo = loadImage("photo.jpg");
  background(0,0,0);
  strokeWeight(15);
  size(400,400);
  image(photo,0,0);
}
void draw()
{
  image(photo,0,0);
  stroke(20,20,(int)(Math.random()*100)+155);
  
  while (endY < 401){
     endX = startX + ((int)(Math.random()*19)-9);
     endY = startY + ((int)(Math.random()*10));
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  }
   while (SB < 401){
     EA = SA + ((int)(Math.random()*19)-9);
     EB = SB + ((int)(Math.random()*10));
  line(SA,SB,EA,EB);
  SA = EA;
  SB = EB;
  }
}
void mousePressed()
{
  redraw();
  if(mousePressed == true){
   startX = 150;
   endX = 0;
   startY = 300;
   endY = 0;
   SA = 250;
   EA = 0;
   SB = 300;
   EB = 0;
  }
}