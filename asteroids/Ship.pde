class Ship extends Item
{
  float size = 50;
  float rotation;
  float angle;
  boolean thrusting;
  Ship()
  {
    x = width/2;
    y = height/2;
  }
  void update(float elapsed)
  {
    angle += rotation * PI * elapsed;
    if(thrusting){
      float yaccel = sin(angle);
      float xaccel = cos(angle);
      yspeed += yaccel * 100 * elapsed;
      xspeed += xaccel * 100 * elapsed;
    }
    x += xspeed * elapsed;
    y += yspeed * elapsed;
    if ( x > width + size / 2 ) {
      x = -size / 2;
    }
    else if ( x < -size / 2 ) {
      x = width + size / 2;
    }
    if ( y > height + size / 2 ) {
      y = -size / 2;
    }
    else if ( y < -size / 2 ) {
      y = height + size / 2;
    }
  }

  void render()
  {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    noFill();
    strokeWeight(1);
    triangle(25,0,-25,20,-25,-15);
    popMatrix();
  }
  void spin(int direction)
  {
    rotation = direction;
  }
  void thrust(boolean thrustOn)
  {
    thrusting = thrustOn;
  }
}