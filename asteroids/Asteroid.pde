class Asteroid extends Item
{
  float size;
  float[] pointx;
  float[] pointy;
  float angle;
  float rotateSpeed;

  Asteroid()
  {
    x = random(width);
    y = random(height);
    initialize();
  }
    Asteroid(float x,float y, float size)
    {
      initialize();
      this.x = x;
      this.y = y;
    }
    void initialize()
    {
    xspeed = random(180, 420);
    yspeed = random(180, 420);
    if (random(100) < 50) { 
      xspeed = -xspeed;
    }
    if (random(100) < 50) { 
      yspeed = -yspeed;
    }

    size = 100;
    rotateSpeed = random(-HALF_PI, HALF_PI);
    int num = 7;
    pointx = new float[num];
    pointy = new float[num];

    float angle = 0;
    float increment = TWO_PI / num;
    for (int n = 0; n < num; n++) {
      float radius = random(size / 4, size / 2);
      pointx[n] = cos(angle) * radius;
      pointy[n] = sin(angle) * radius;
      angle += increment;
    }
  }
  void update(float elapsed)
  {
    x += xspeed * elapsed;
    y += yspeed * elapsed;
    if ( x > width + size / 2 ) {
      x = -size / 2;
    } else if ( x < -size / 2 ) {
      x = width + size / 2;
    }
    if ( y > height + size / 2 ) {
      y = -size / 2;
    } else if ( y < -size / 2 ) {
      y = height + size / 2;
    }
    angle += rotateSpeed * elapsed;
  }

  void render()
  {
    pushMatrix();
    translate(x, y);
    rotate(angle);

    stroke(255);
    strokeWeight(1);
    float lastx = pointx[pointx.length - 1];
    float lasty = pointy[pointy.length - 1];
    for (int n = 0; n < pointx.length; n++) {
      line(lastx, lasty, pointx[n], pointy[n]);
      lastx = pointx[n];
      lasty = pointy[n];
    }
    popMatrix();
  }
}