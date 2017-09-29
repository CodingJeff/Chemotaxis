germ [] aBunch;
//declare bacteria variables here   
void setup()   
{  
  background(0);
  ellipse(250,250,350,350);
  size (500, 500);
  aBunch=new germ[2000];
  for (int i=0; i < aBunch.length; i++)
  {
    aBunch[i]= new germ ();
  }
  //initialize bacteria variables here
}   
void draw()
{
  for (int i=0; i < aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].move();
  }
}   
  //move and show the bacteria
class germ    
{     
  int myX, myY;
  germ()
  {
    myX=250;
    myY=250;//lots of java!
  }
  void move()
  {
    if (mouseX > myX && mouseY > myY)
    {
      myX=myX-(int)(Math.random()*4.5)+1;
      myY=myY+(int)(Math.random()*3.5)-2;
    } else if (mouseX > myX && mouseY < myY)
    {
      myX=myX-(int)(Math.random()*4.5)+1;
      myY=myY+(int)(Math.random()*4.5)-1;
    } else if (mouseX < myX && mouseY <myY)
    {
      myX=myX+(int)(Math.random()*2.5)+1;
      myY=myY+(int)(Math.random()*4.5)-1;
    } else if (mouseX < myX && mouseY >myY)
    {
      myX=myX+(int)(Math.random()*2.5)+1;
      myY=myY+(int)(Math.random()*3.5)-2;
    }
  }
  void show()
  {
    fill((int)(Math.random()*256)+1, (int)(Math.random()*256+1), (int)(Math.random()*256+1));
    ellipse(myX, myY, 6, 6);
  }
}