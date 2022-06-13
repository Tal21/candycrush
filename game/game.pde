String title = "CANDY CRUSH";
int score = 0;
int moves = 10;
int level = 1;
boolean falling = false;
boolean swapping = false;
int timer = -1;
float progress;
board grid;
Candy a;
ArrayList<Candy> clicked = new ArrayList<Candy>();
 //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  private boolean inBounds(int r, int c){
    return 0 <= r && 0 <= c && grid.width > r && grid.height > c; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  }
 //<>// //<>// //<>// //<>//

  void mouseClicked(){ //<>//
  Candy candyCLICK = grid.getCandyAt(mouseX,mouseY);
  
  if(candyCLICK == null){
    return;
  } //<>// //<>// //<>// //<>// //<>// //<>// //<>//
   //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  if(candyCLICK != null && clicked.size() == 0){ //<>// //<>//
    clicked.add(candyCLICK); //<>// //<>// //<>// //<>// //<>//
  } //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
else{ //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
      int row = (candyCLICK.x-30) / 70; //<>// //<>// //<>//
      int col = (candyCLICK.y-120) / 70; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
     
      Candy thing = clicked.get(0); //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
      int rowOLD = (thing.x-30) / 70; //<>//
      int colOLD = (thing.y-120) / 70; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
      //<>//
      for(int i = -1; i < 2; i++){ //<>// //<>// //<>//
        for(int j = -1; j < 2; j++){ //<>//
          if(inBounds(row+i,col+j) && (i == 0 || j == 0)){
            if(row+i == rowOLD && col+j == colOLD){ //<>//
              clicked.add(candyCLICK);
            }
          } //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
        }
      } //<>// //<>//
       //<>//
      if(clicked.size() == 1){
        clicked.remove(0); //<>//
      }
  }
  if(clicked.size() == 2){
    grid.swap();
    grid.display();
    moves --;
    
  } 

}   //<>// //<>// //<>//
 //<>// //<>// //<>// //<>//
void setup(){ //<>// //<>//
  size(1000, 700); //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  progress = 0; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  grid = new board(); //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  run(); //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  timer = -1; //<>// //<>//
  ArrayList<Candy> check = grid.checkBoard(); //<>// //<>//
    if(check.size() > 0){ //<>// //<>//
      grid.updateBoard(check); //<>// //<>//
    } //<>// //<>//
   //<>//
}   //<>// //<>// //<>//
 //<>// //<>// //<>//
 //<>// //<>// //<>//
 //<>//

void draw(){
  //grid.display(); //<>//
  //System.out.println("done"); //<>//

  //background //<>//
  PImage background = loadImage("backdrop.png");
  image(background, -250, 0); //<>// //<>// //<>//
   //<>//
   //<>// //<>// //<>//
  //scorebox //<>// //<>// //<>//
  fill(255); //<>// //<>// //<>// //<>//
  rect(700, 50, 200, 75);
  fill(0); //<>// //<>//
  text("Score: " + score, 725, 75); //<>// //<>// //<>//
   //<>// //<>// //<>//
  //movesbox
  fill(255);
  rect(700, 150, 200, 75); //<>//
  fill(0);
  text("Moves: "+ moves, 725, 175);
  
  text(grid.getCandy(0,0).type, 10, 10);

  grid.display();
  
  
  if(falling){
    if(timer == -1){
      timer = 10;
    }else if(timer == 0){
      timer = -1;
      falling = false;
      grid.updateBoard2();
    }else{
      grid.fall();
      timer--;
    }
  }else{
    ArrayList<Candy> check = grid.checkBoard();
    /*
    for(int i = 0; i < check.size(); i++){
      System.out.println(check.get(i).brow + " " + check.get(i).bcol);
    }*/
    if(check.size() > 0){
      grid.updateBoard(check);
    }
  }
}

boolean gameOver(){
  return true;
}

void updateScore(){
}


int getMoves(){
  return moves;
}

int getScore(){
  return score;
}

float getProgress(){
  return progress;
}

void run(){
}
