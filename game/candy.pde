public class Candy{
  //fields
  int x;
  int y;
  int type;
  int scorePlus;
  int radius = 40;
  color[] colors = {color(255, 10, 10), color(10, 255, 10), color(255,165,0), color(10, 10, 255), color(200, 0, 200)};
  
  
  int RED = 0;
  int GREEN = 1;
  int ORANGE = 2;
  int BLUE = 3;
  int PURPLE = 4;
  
  
  public Candy(int xcor, int ycor){
    int assigntype = (int)(Math.random() * (5-1+1))+1;
    type = assigntype -1;
    x = xcor;
    y = ycor;
  } 

  
  void display(){
    fill(colors[type]);
    circle(x,y,radius);
 //<>//
  }
  
  int getType(){
    return type;
  }
  
  int getPlus(){
    return scorePlus;
  }
  
  
  
  
}
