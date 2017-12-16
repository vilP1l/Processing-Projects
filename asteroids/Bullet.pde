class Bullet extends Item
{
  Bullet(float x, float y, float angle)
  {
    this.x = x;
    this.y = y;
    float speed = 550;
    xspeed = cos(angle) * speed;
    yspeed = sin(angle) * speed;
  }

  void update(float elapsed)
  {
    x += xspeed * elapsed;
    y += yspeed * elapsed;
    if(x < 0 || x > width || y > height || y < 0)
    {
      active = false;
    }
  }

  void render()
  {
    stroke(255);
    strokeWeight(8);
    point(x, y);
  }
}