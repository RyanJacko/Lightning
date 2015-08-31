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
  stroke(255,255,255);
  endX = startX + (int)Math.random()*9;
  endY = startY + (int)Math.random()*9;

}
void mousePressed()
{

}