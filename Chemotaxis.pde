germ [] aBunch;
//declare bacteria variables here   
void setup()   
{  
  size (500, 500);
  aBunch=new germ[400];
  for (int i=0; i < aBunch.length; i++)
  {
    aBunch[i]= new germ ();
  }
  //initialize bacteria variables here
}   
void draw() 
{
  background(0);
  for (int i=0; i < aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
  }
}
{    
  //move and show the bacteria
}  
class germ    
{     
  int myX,myY;
  germ()
  {
    myX=250;
    myY=250;//lots of java!
}    