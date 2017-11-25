int num;
void setup()
{
  num = 1000;
  size(800,800);
  background(0);
}
void draw()
{
  background(0);
  for(int n = 0; n < num; n++)
  {
    Dot dot1 = new Dot();
    dot1.render();
    dot1.calc();
  }
}