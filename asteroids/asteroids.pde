ArrayList<Asteroid> rocks;
ArrayList<Bullet> bullets;
int frameTime;
boolean firingBullets = false;
float fireTime;
Ship ship;
void setup()
{
  size(800, 800, P2D);
  //fullScreen(P3D);
  ship = new Ship();
  bullets = new ArrayList<Bullet>();
  rocks = new ArrayList<Asteroid>();
  for (int n = 0; n < 4; n++) {
    Asteroid rock = new Asteroid();
    rocks.add(rock);
  }
  frameTime = millis();
}

void draw()
{
  background(0);

  int now = millis();
  float elapsed = (now - frameTime) / 1000.0;
  frameTime = now;
  for ( int n = 0; n < rocks.size(); n++ ) {
    Asteroid rock = rocks.get(n);
    rock.update(elapsed);
    rock.render();
  }
  ship.update(elapsed);
  ship.render();
  for (Bullet bill : bullets)
  {
    bill.render();
    bill.update(elapsed);
  }
  if (firingBullets)
  {
    fireTime += elapsed;
    if (fireTime >= .2) {
      fireTime = 0;
      Bullet b = new Bullet(ship.x, ship.y, ship.angle);
      bullets.add(b);
    }
    for (int n = 0; n < bullets.size(); n++)
    {
      Bullet bill = bullets.get(n);
      for (int v = 0; v < rocks.size(); v++)
      {
        Asteroid rock = rocks.get(v);
        float d = dist(bill.x,bill.y,rock.x,rock.y);
        if(d < rock.size / 2)
        {
          rocks.remove(v);
          bullets.remove(n);
        }
      }
    }
  }
}
void keyPressed()
{
  switch(keyCode) { 
  case LEFT:
    ship.spin(-1);
    break;
  case RIGHT:
    ship.spin(1);
    break;
  case UP:
    ship.thrust(true);
    break;
  case 32:
    firingBullets = true;

    break;
  }
}
void keyReleased()
{
  switch(keyCode) {
  case LEFT:
  case RIGHT:
    ship.spin(0);
    break;
  case UP:
    ship.thrust(false);
    break;
  case 32:
    firingBullets = false;
    break;
  }
}