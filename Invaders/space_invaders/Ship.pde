class Ship extends Main
{
  boolean left, right;
  Ship()
  {
    //Ship Starting pos
    x = width/2;
    y = height - 100;
    dx = 3.5;
  }
  void render()
  {
    //Load Image, render it and make sure it is centered
    PImage ship;
    imageMode(CENTER);
    ship = loadImage("pship.png");
    image(ship, x, y);
  }
  void update()
  {
    if (left && x > 0)
    {
      x -= dx;
    }
    if (right && x < width)
    {
      x += dx;
    }
  }
}