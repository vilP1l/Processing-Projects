Dot dot1;

void setup()
{
  size(800,800,P2D);
  background(0);
  dot1 = new Dot();
}
void draw()
{
  background(0);
  dot1.render();
  dot1.calc();
  println("dot1 X "+dot1.x);
  println("dot1 Y "+dot1.y);
  println("mouseX "+mouseX);
  println("mouseY "+mouseY);
}