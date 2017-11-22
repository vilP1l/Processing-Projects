Yum = new Food()
float x, y, dx, dy, maxSnakeLength, size, keypressedRandom;
String keypressed;
boolean foodEaten;
void setup()
{
  foodEaten = false;
  keypressed = "UP";
  frameRate(15);
  size(500, 500);
  //fullScreen();
  x = width/2;
  y = height/2;
  dy = 7;
  dx = 7;
  size = 10;
}
void draw()
{
  background(0);
  fill(0, 255, 0);
  rect(x, y, size, size);

  if (keypressed == "UP") {
    y -= dy;
  }
  if (keypressed == "DOWN") {
    y += dy;
  }
  if (keypressed == "LEFT") {
    x -= dx;
  }
  if (keypressed == "RIGHT") {
    x += dx;
  }
}
void keyPressed()
{
  if (keyCode == UP)
  {
    keypressed = "UP";
  } else if (keyCode == DOWN)
  {
    keypressed = "DOWN";
  }
  if (keyCode == RIGHT)
  {
    keypressed = "RIGHT";
  } else if (keyCode == LEFT)
  {
    keypressed = "LEFT";
  }
}