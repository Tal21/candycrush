public class Candy{
  //fields
  int row;
  int col;
  int type;
  int scorePlus;
  color[] colors = {color(255, 10, 10), color(10, 255, 10), color(10, 10, 255), color(200, 0, 200)};
  
  
  int RED = 0;
  int GREEN = 1;
  int ORANGE = 2;
  int BLUE = 3;
  int PURPLE = 4;
  
  public Candy(int r, int c, int t){
    row = r;
    col = c;
    type = t;
    scorePlus = 100;
  }
  
  
  public Candy(int r, int c){
    int assigntype = (int)(Math.random() * 5);
    new Candy(0, c, assigntype);
    
    
  }
  
  void display(){
    fill(colors[type]);
    ellipse(10, 10, 10, 10);
  }
  
  int getType(){
    return type;
  }
  
  int getPlus(){
    return scorePlus;
  }
  
  
  
  
}
