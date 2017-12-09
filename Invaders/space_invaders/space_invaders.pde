//Vars and some classes
int score, frameTime, alienNum;
Ship ship;
ArrayList<Bullet> bullets;
float fireTime, alienfireTime;
boolean firing;
ArrayList<Alien> aliens;
void setup()
{
  size(800, 800, P3D);
  ship = new Ship();
  bullets = new ArrayList<Bullet>();
  aliens = new ArrayList<Alien>();
}
void draw()
{  
  int now = millis();
  float elapsed = (now - frameTime) / 1000.0;
  frameTime = now;
  background(0);
  //hud
  fill(255, 0, 0, 60);
  noStroke();
  rect(0, 0, width, 40);
  fill(255);
  textSize(20);
  textAlign(BOTTOM, RIGHT);
  text("Score: " + score, 20, 20);
  //Render & Update Ship
  ship.render();
  ship.update();
  for (Bullet bill : bullets)
  {
    bill.render();
    bill.update();
  }
  if (firing)
  {
    fireTime += elapsed;
    if (fireTime >= .2) {
      fireTime = 0;
      Bullet b = new Bullet();
      bullets.add(b);
    }
  }
  for (Alien bob : aliens)
  {
    bob.render();
    bob.update();
  }
  boolean spawnAlien = true;
  if (alienNum >= 9)
  {
    spawnAlien = false;
  }
  if (spawnAlien)
  {
    alienfireTime += elapsed;
    if (alienfireTime >= 1) {
      fireTime = 0;
      Alien b = new Alien();
      aliens.add(b);
      alienNum += 1;
      println(alienNum);
    }
  }
}
void keyPressed()
{
  switch(keyCode)
  {
  case LEFT:
    ship.left = true;
    break;
  case RIGHT:
    ship.right = true;
    break;
  case 32:
    firing = true;
  }
}
void keyReleased()
{
  switch(keyCode)
  {
  case LEFT:
    ship.left = false;
    break;
  case RIGHT:
    ship.right = false;
    break;
  case 32:
    firing = false;
    break;
  }
}