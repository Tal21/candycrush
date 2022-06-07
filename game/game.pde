String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;
board grid;
Candy a;
ArrayList<Candy> clicked = new ArrayList<Candy>();

  private boolean inBounds(int r, int c){
    return 0 <= r && 0 <= c && grid.width > r && grid.height > c;
  }
 //<>// //<>// //<>//

  void mouseClicked(){
  Candy candyCLICK = grid.getCandyAt(mouseX,mouseY);
  
  if(candyCLICK == null){
    return;
  }
  
  if(candyCLICK != null && clicked.size() == 0){
    clicked.add(candyCLICK); //<>// //<>// //<>// //<>// //<>//
  }
else{
      int row = (candyCLICK.x-30) / 70;
      int col = (candyCLICK.y-120) / 70;
     
      Candy thing = clicked.get(0); //<>// //<>// //<>//
      int rowOLD = (thing.x-30) / 70;
      int colOLD = (thing.y-120) / 70;
     
      for(int i = -1; i < 2; i++){ //<>// //<>// //<>//
        for(int j = -1; j < 2; j++){
          if(inBounds(row+i,col+j) && (i == 0 || j == 0)){
            if(row+i == rowOLD && col+j == colOLD){
              clicked.add(candyCLICK);
            }
          }
        }
      } //<>// //<>//
      
      if(clicked.size() == 1){
        clicked.remove(0);
      }
  }
  if(clicked.size() == 2){
    grid.swap();
    grid.display();
    run();
  } 
}
 
   //<>//
 //<>//
void setup(){
  size(1000, 700); //<>//
  progress = 0; //<>//
  grid = new board(); //<>//
 // Candy a = grid.getCandy(0,0); //<>//
  //grid.display();
  run(); //<>//
} //<>// //<>// //<>//
 //<>//
 //<>// //<>//
void draw(){
  //run();
  //grid.display();
  //System.out.println("done");
  
  //background
  PImage background = loadImage("backdrop.png"); //<>//
  image(background, -300, 0); //<>//
  
  
  //scorebox //<>//
  fill(255); //<>// //<>// //<>//
  rect(700, 50, 200, 75);
  fill(0);
  text("Score: " + score, 725, 75); //<>//
   //<>// //<>//
  //movesbox
  fill(255);
  rect(700, 150, 200, 75);
  fill(0);
  text("Moves: "+ moves, 725, 175);
  
  grid.display();
}

boolean gameOver(){
  return true;
}

void updateScore(){
}

void updateBoard(){
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
 
  ArrayList<Candy> print = grid.checkBoard();
  /*System.out.println(print.size());
  while(print.size() > 0){
    Candy test = print.remove(0);
    System.out.println(test.brow + " " + test.bcol);
  }
  */
  grid.updateBoard(print);
}
