class Alien extends Main
{
  Alien()
  {
   x = 0;
   y = 60;
   dx = 5;
  }
  void render()
  {
    PImage invader1,invader2;
    invader1 = loadImage("invader1.png");
    invader2 = loadImage("invader2.png");
    imageMode(CENTER);
    image(invader1,x,y);
  }
  void update()
  {
    x += dx;
    if(x > 800 || x < 0)
    {
      dx = -dx;
      y += 60;
      dx += .2;
    }
  }
}