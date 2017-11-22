//Declare Vars
Food food;
float x, y, maxSnakeLength, size, keypressedRandom;
String keypressed;
boolean foodEaten, gameOver;
int dx, dy;
void setup()
{
  //Assign Some Vars
  gameOver = false;
  food = new Food();
  foodEaten = false;
  keypressed = "UP";
  frameRate(15);
  size(500, 500);
  //fullScreen();
  x = width/2;
  y = height/2;
  dy = 8;
  dx = 8;
  size = 10;
}
void draw()
{
  //Draw snake, food and background
  background(0);
  food.render();
  fill(0, 255, 0);
  rect(x, y, size, size);
  // Make Snake move in different directions
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
  // Calc if game is over
  if (x >= 800 || x <= 0)
  {
    gameOver = true;
    println("Game Over!");
  } 
  if ( y >= 800 || y <= 0)
  {
    gameOver = true;
    println("Game Over!");
  }
  // calculate if foodpos is at snakepos
  //if (food.x == x && food.y == y)
  {
    //println("Eaten Food");
  }
}
void keyPressed()
  //Make snake keep moving even if key is not held
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