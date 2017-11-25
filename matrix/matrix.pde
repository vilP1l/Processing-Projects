/*
TODO:
 random letters
 fading out / black background
 falling / stop randomly
 green (purple)
 start at random spot
 grid
 */

float[] y;
color[] colors;
float letterHeight, letterWidth;
String letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()<>?{}[]ꭁꬲꬳꬻꭄꭅꭀꬶ";


void setup()
{
  //fullScreen();
  size(800, 800, P2D);
  background(0);
  PFont font = createFont("Monaco", 25);
  textFont(font);
  letterHeight = textAscent();
  letterWidth = textWidth("j");
  int numCols = ceil(width/letterWidth);
  y = new float[numCols];
  colors = new color[numCols];
  for (int n = 0; n < colors.length; n++) {
    colors[n] = #27D800;
  }
  frameRate(15);
}

void draw()
{
  fill(0, 30);
  rect(0, 0, width, height);

  textAlign(LEFT, TOP);
  for (int n = 0; n < y.length; n++) {
    if (random(100) < 75) {
      fill(colors[n]);
    } else {
      fill(#8DD37C);
    }
    int index = (int) random(letters.length());
    char letter = letters.charAt(index);
    if (random(100) < 50) {
      text(letter, n * letterWidth, y[n]);
      y[n] += letterHeight;
      if ( y[n] > height ) {
        y[n] = 0;
        colors[n] = #27D800;
      }//if 2
    }//if 1
  }//for
}//draw

void mousePressed()
{
  trackMouse();
}

void mouseDragged()
{
  trackMouse();
}

void trackMouse()
{
  int column = (int)(mouseX / letterWidth);
  if(column >= 0 && column < colors.length){
  colors[column] = #431A86;
  }
}