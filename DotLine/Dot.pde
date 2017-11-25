class Dot
{
  float x, y;
  Dot() {
    x = random(width);
    y = random(height);
  }
  void render()
  {
    ellipse(x, y, 5, 5);
   
  }
  void calc()
  {
    float d = dist(x,y,mouseX,mouseY);
    if(d < 210)
    {
      stroke(255);
      strokeWeight(2);
      line(x,y,mouseX,mouseY);
    }
  }
}