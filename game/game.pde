String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;

void setup(){
  size(1000, 800);
  progress = 0;
  candy a = new candy(0, 0);
}

void draw(){
  run();
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
