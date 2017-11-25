class Dot
{
  float x, y;
  Dot() {
    x = random(width);
    y = random(height);
    x=400;
    y=400;
  }
  void render()
  {
    ellipse(x, y, 5, 5);
   
  }
  void calc()
  {if(x - mouseX > 100 || mouseX  - x > 100)
  {
    stroke(255);
    strokeWeight(5);
   line(x, y, mouseX, mouseY);
  
  }
  }
}