//Make food class
class Food
{
  int num = 0;
  //Declare Vars
  float size, x, y;
  boolean shown;
  Food()
  {
    //Assign vars and location
    x = random(width);
    y = random(height);

    size = 10;
    shown = true;
  }
  void render()
  {
    //Draw the food
    if (shown == true);
    {
      fill(255, 0, 0);
      rect(x, y, size, size);
      println(x % dx);
    }
  }
}