  
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  background(0,0,0);
  strokeWeight(3);
  size(300,300);
}
void draw()
{
  stroke((int)(Math.random()*209),(int)(Math.random()*209),(int)(Math.random()*255));
  while (endY < 301){
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
   startX = mouseX;
   endX = 0;
   startY = 0;
   endY = 0;
  }
}