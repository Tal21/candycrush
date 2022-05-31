String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;
board grid;
Candy a;
ArrayList<Candy> clicked = new ArrayList<Candy>();

  void mouseClicked(){
    
  Candy candyCLICK = grid.getCandyAt(mouseX,mouseY);
   //<>//
  if(candyCLICK != null){
    text("hi", 20, 20);
    clicked.add(candyCLICK);
  }
  if(clicked.size() == 2){
    grid.swap();
    text("SWAP DONE", 20, 20);
    grid.display();
  }
}

void setup(){
  size(1000, 800);
  progress = 0;
  //Candy a = new Candy(0, 0); //<>//
  grid = new board();
 // Candy a = grid.getCandy(0,0);
  grid.display();
} //<>//


void draw(){
  //run();
  //grid.display();
  //System.out.println("done");
  
  //scorebox
  fill(255);
  rect(700, 200, 200, 100);
  
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
}
