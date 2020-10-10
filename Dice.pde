void setup()
{
  noLoop();
  size(400,400);
}
void draw()
{
  background(255);
  int sum = 0;
  for (int y = 0; y < 350; y += 50)
  {
    for (int x = 25; x < 375; x+= 50)
    {
      Die newDie = new Die(x, y);
      newDie.roll();
      newDie.show();
      sum += newDie.dieNum;
    }
  }
  textSize(32);
  fill(0);
  text("Sum of Dice Rolls: " + sum, 25, 375);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, dieNum;
  Die(int x, int y)
  {
    myX = x;
    myY= y;
    dieNum = 0;
  }
  void roll()
  {
    dieNum = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 40, 40, 7);
    fill(0);
    if (dieNum == 1)
    {
      ellipse(myX+20, myY+20, 5, 5);
    }
    else if(dieNum == 2)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
    }
    else if(dieNum == 3)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
    }
    else if(dieNum == 4)
    {
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
    }
    else if(dieNum == 5)
    {
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
    }
    else
    {
      ellipse(myX+10, myY+20, 5, 5);
      ellipse(myX+30, myY+20, 5, 5);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
    }
  }
}
