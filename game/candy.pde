public class Candy{
  //fields
  int x;
  int y;
  int type;
  int scorePlus;
  color[] colors = {color(255, 10, 10), color(10, 255, 10), color(10, 10, 255), color(200, 0, 200)};
  
  
  int RED = 0;
  int GREEN = 1;
  int ORANGE = 2;
  int BLUE = 3;
  int PURPLE = 4;
  
  
  public Candy(int xcoor, int ycoor){
    int assigntype = (int)(Math.random()* (5-1+1)) +1; //fix
    x = xcoor;
    y = ycoor;
    type = assigntype -1;
    scorePlus = 100;
    //Candy(r, c, assigntype);  
    
  }
  
  public Candy(int xcoor, int ycoor, int typeassign){
    x = xcoor;
    y = ycoor;
    type = typeassign;
    scorePlus = 100;
  }
  
  void display(){
    fill(colors[type]);
    ellipse(x, y, 50, 50);
    
  }
  
  int getType(){
    return type;
  }
  
  int getPlus(){
    return scorePlus;
  }
  
  
  
  
}
