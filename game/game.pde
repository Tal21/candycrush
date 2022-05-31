String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;
board a;
//Candy a;

void setup(){
  size(1000, 800);
  progress = 0;
  //a = new Candy(40, 40);
  a = new board(); //<>//
}

void draw(){
  //run();
  a.display();
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
