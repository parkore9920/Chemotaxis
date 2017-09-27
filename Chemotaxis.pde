Bacteria adp = new Bacteria();
Bacteria [] bubbles;
int x = (int)(Math.random()*300);
int y = (int)(Math.random()*300);
void setup()
{
  size(500,500); 
  bubbles = new Bacteria[300];
  for (int a = 0; a < bubbles.length; a++)
  {
  	bubbles[a] = new Bacteria();
  }
}  
void draw()   
{ 
  background(255);
    for (int a = 0; a < bubbles.length; a++)
{
	bubbles[a].show();
	bubbles[a].move();
}
}  
class Bacteria    
{     
  int myX,myY,size,myColor;
  Bacteria()
  {
  	myX=myY=250;
    size = (int)(Math.random()*10)+1;
    myColor = (int)(Math.random()*256);
  }
  void move()
  {
  	if (mouseX > myX)
  		{
  			myX = myX + (int)(Math.random()*4)-2;
  		}
  		else if (mouseX < myX)
  		{
  			myX = myX + (int)(Math.random()*3)+1;
  		}
  		else
  		{
  			myX = myX + (int)(Math.random()*3)-1;
  		}
  		myY = myY + (int)(Math.random()*3)-1;
  		}
  		void show()
  		{
  			fill(myColor,myColor,myColor);
           ellipse(myX,myY,size,size);
  		}
  }