
//Declare Vars
Food food;
float x, y, maxSnakeLength, size, keypressedRandom;
String keypressed;
boolean foodEaten, gameOver;
int dx, dy, score, spacing;
void setup()
{
  //Assign Some Vars
  gameOver = false;
  food = new Food();
  foodEaten = false;
  keypressed = "DOWN";
  frameRate(15);
  //size(500, 500);
  fullScreen();
  x = 0;
  y = 0;
  dy = 10;
  dx = 10;
  size = 15 ;
}
void draw()
{
  isEaten();
  println("snakex: "+ x + " snakey: " + y + " foodx: " + food.x + " foody: " + food.y);
  //Draw snake, score, food and background
  background(0);
  textSize(20);
  fill(255);
  textAlign(CENTER);
  text("Score: " + score, width/2, 20);
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


void isEaten()
{
  if(food.x == x && food.y == y || food.x <= x - 3 && food.y <= y - 3 || food.x <= x + 3 && food.x <= x - + 3)
  {
    while(food.Eaten == false){
    println("Eaten");
    score += 1;
    food.Eaten = true;
    }
  }
}