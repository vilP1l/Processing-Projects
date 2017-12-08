class Bullet extends Main
{
  boolean firing = false;
  Bullet()
  {
    x = ship.x;
    y = ship.y;
    dy = 7;
  }
  void update()
  {
    y -= dy;
  }
  void render()
  {
    strokeWeight(5);
    stroke(255, 0, 0);
    point(x, y);
  }
}