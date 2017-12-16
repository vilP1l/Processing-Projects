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
  }

  void render()
  {
    stroke(255);
    strokeWeight(8);
    point(x, y);
  }
}