String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;
board grid;
Candy a;


void setup(){
  size(1000, 800);
  progress = 0;
  //Candy a = new Candy(0, 0); //<>//
  grid = new board();
 // Candy a = grid.getCandy(0,0);
  grid.display();
} //<>//
 //<>//
void draw(){
  //run();
  //grid.display();
  //System.out.println("done");
  
}

boolean gameOver(){
  return true;
}

void updateScore(){
}

void updateBoard(){
}

void mouseClicked(){
}

void mouseReleased(){
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
