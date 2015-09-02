  
PImage photo;
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  photo = loadImage("photo.jpg");
  background(0,0,0);
  strokeWeight(10);
  size(400,400);
  image(photo,0,0);
}
void draw()
{
  stroke((int)(Math.random()*209),(int)(Math.random()*209),(int)(Math.random()*255));
  while (endY < 401){
     endX = startX + ((int)(Math.random()*19)-9);
     endY = startY + ((int)(Math.random()*10));
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  }
}
void mousePressed()
{
  if(mousePressed == true){
   startX = 200;
   endX = 0;
   startY = 330;
   endY = 0;
  }
}