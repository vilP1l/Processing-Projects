//Vars and some classes
int score;
Ship ship;
void setup()
{
  size(800, 800, P3D);
  ship = new Ship();
}
void draw()
{
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
  }
}