//Vars and some classes
int score, frameTime;
Ship ship;
ArrayList<Bullet> bullets;
float fireTime;
boolean firing;
void setup()
{
  size(800, 800, P3D);
  ship = new Ship();
  bullets = new ArrayList<Bullet>();
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