var num;
var dot1;
function setup()
{
  num = 200;
  createCanvas(screen.width,screen.height);
  background(0);
}
function draw()
{
  background(0);
  for(var n = 0; n < num; n++)
  {
    dot1 = new Dot
    dot1.render();
    dot1.calc();
  }
}



function Dot()
{  
    this.x = random(width);
    this.y = random(height);

  this.render = function render()
  {
    ellipse(this.x, this.y, 5, 5);  
  }
 this.calc = function calc()
  {
    var d = dist(this.x,this.y,mouseX,mouseY);
    if(d < 100)
    {
      stroke(random(255),random(255),random(255));
      strokeWeight(2);
      line(this.x,this.y,mouseX,mouseY);
    }
  }
}