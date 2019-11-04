

star[] lit = new star[301];
void setup()   
{     
  size(600, 600);
  lit[0] = new Odd();
  for (int i=1; i<lit.length; i+=2)
  {
    lit[i] = new star();
    lit[i+1] = new Odd();
    
    
    
  }
}   
void draw()   
{    

   background(0);
  

  for (int i=1; i< lit.length; i++)
  {
    
    lit[i].show();
    lit[i].move();
    
  }
}  
class star    
{     
  int mycolor;
  double mx, my, speede, angl;
  star() //constructor
  {
   mx = mouseX;
     my = mouseY;
    angl = Math.random()*2*Math.PI;
    if((Math.random()*2)>1)
    {
    speede = (Math.random()*3);
     
  }
  else
  {
    speede = (Math.random()*7);
     
   
  }
  
    mycolor = color(50,200,200);
  }
  
  void move()
  {
    if ((600>mx)&&(mx>0))
    {
    mx = speede * (Math.cos(angl)) + mx;
    my = speede * (Math.sin(angl)) + my;
    }
    else
    {
     mx = mouseX;
     my = mouseY;
    angl = Math.random()*2*Math.PI;
    mx = speede * (Math.cos(angl)*((int)(Math.random()*3)+3)) + mx;
    my = speede * (Math.sin(angl)*((int)(Math.random()*3)+3)) + my;
    }
  }

  void show()
  {
    fill(mycolor);
    ellipse((float)mx,(float)my,28,4);
    ellipse((float)mx,(float)my,4,28);
    ellipse((float)mx,(float)my,10,10);
    
    
    
    
  }
}
class Odd extends star
{
  Odd() //constructor
  {
    mx = mouseX;
     my = mouseY;
    angl = Math.random()*2*Math.PI;
    
    speede = (Math.random()*6)+15;
    mycolor = color(255,255,102);
     
  }
  
  
    
 
  
   
  }
   
     
    
