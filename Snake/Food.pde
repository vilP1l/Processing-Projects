class Food
{
  float x,y,size;
  boolean shown;
  Food()
  {
    shown = false;
    size = 8;
    if(foodEaten == false)
    {
      x = random(width);
      y = random(height);
      shown = true;
    }
  }
void render()
{
  if(shown == true);
  {
    rect(x,y, size,size);
  }
}
}