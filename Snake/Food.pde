
//Make food class
class Food
{
  //Declare Vars
  float size;
  int x,y;
  boolean shown, Eaten;
  Food()
  {
    //Assign vars and location
    Eaten = false;
    dx = 8;
    dy = 8;
    x = ceil(random(width));
    y = ceil(random(height));
    size = 15;
    shown = true;
  }
  void render()
  {
    //Draw the food
    if(shown == true)
    {
      noStroke();
      fill(255, 0, 0);
      rect(x, y, size, size);
    }
  }
}