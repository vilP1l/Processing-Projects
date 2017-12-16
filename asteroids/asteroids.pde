ArrayList<Item> items;
int frameTime;
boolean firingBullets = false;
float fireTime;
Ship ship;
void setup()
{
  size(800, 800, P2D);
  //fullScreen(P3D);
  ship = new Ship();
  items = new ArrayList<Item>();
  for (int n = 0; n < 4; n++) {
    Asteroid rock = new Asteroid();
    items.add(rock);
  }
  items.add(ship);
  frameTime = millis();
}

void draw()
{
  background(0);

  int now = millis();
  float elapsed = (now - frameTime) / 1000.0;
  frameTime = now;
  for (Item bill : items)
  {
    bill.update(elapsed);
  }
  if (firingBullets)
  {
    fireTime += elapsed;
    if (fireTime >= .2) {
      fireTime = 0;
      Bullet b = new Bullet(ship.x, ship.y, ship.angle);
      items.add(b);
    }
  }
  for (Item i : items)
  {
    if (i instanceof Bullet)
    {
      Bullet bill = (Bullet) i;

      for (Item i2 : items)
      {
        if (i2 instanceof Asteroid)
        {
          Asteroid rock = (Asteroid) i2;
          float d = dist(bill.x, bill.y, rock.x, rock.y);
          if (d < rock.size / 2)
          {
            rock.active = false;
            bill.active = false;
          }//End of distance calc
        }//End of instanceof i2
      }//End of Item i2 for
    }//End of i instanceof
  }//End of Item i for
  
  for(int n = 0; n < items.size(); n++)
  {
    //Remove inactive things
    Item item = items.get(n);
    if(!item.active) {
      items.remove(n);
    }
  }
  for (Item bill : items)
  {
    bill.render();
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