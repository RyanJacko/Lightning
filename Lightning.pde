int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  background(0,0,0);
  strokeWeight(1);
  size(300,300);
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while (endX < 300);
  endX = startX + (int)(Math.random()*9);
  endY = startY + (int)(Math.random()*9);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
}
void mousePressed()
{
redraw();
}