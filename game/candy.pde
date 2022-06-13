public class Candy{
  //fields
  int x;
  int y;
  int brow;
  int bcol;
  int type;
  int scorePlus;
  int radius = 40;
  color[] colors = {color(255, 10, 10), color(10, 255, 10), color(255,165,0), color(10, 10, 255), color(200, 0, 200)};
  
  
  int RED = 0;
  int GREEN = 1;
  int ORANGE = 2;
  int BLUE = 3;
  int PURPLE = 4;
  
  
  public Candy(int xcor, int ycor, int boardcol, int boardrow){
    int assigntype = (int)(Math.random() * (5-1+1))+1;
    type = assigntype -1;
    x = xcor;
    y = ycor;
    brow = boardrow;
    bcol = boardcol;
  } 

  
  void display(){ //<>//
    //fill(colors[type]); //<>// //<>// //<>// //<>//
    //circle(x,y,radius);  //<>// //<>// //<>// //<>//
     //<>//
    if(type == 0){
      PImage red = loadImage("redcandy.png");
      red.resize(radius, radius);
      image(red, x-radius/2, y-radius/2);
    }else if(type == 1){
      PImage green = loadImage("greencandy.png");
      green.resize(radius, radius);
      image(green, x-radius/2, y-radius/2);
    }else if(type == 2){
      PImage orange = loadImage("orangecandy.png");
      orange.resize(radius, radius);
      image(orange, x-radius/2, y-radius/2);
    }else if(type == 3){
      PImage blue = loadImage("bluecandy.png");
      blue.resize(radius, radius);
      image(blue, x-radius/2, y-radius/2);
    }else if(type == 4){
      PImage purple = loadImage("purplecandy.png");
      purple.resize(radius, radius);
      image(purple, x-radius/2, y-radius/2);
    }
  }
  
  void setXY(int xNEW, int yNEW){
    x = xNEW;
    y = yNEW;
  }
  
  int getType(){
    return type;
  }
  
  int getPlus(){
    return scorePlus;
  }
  
  int getX(){
    return x;
  }
  
int getY(){
    return y;
  }
  
  
  
}
