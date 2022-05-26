String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;

setup(){
  size(1000, 800);
  progress = 0;
}

draw(){
  run();
}

gameOver(){
  return true;
}

updateScore(){
}

updateBoard(){
}

mouseClicked(){
}

mouseReleased(){
}

getMoves(){
  return moves;
}

getScore(){
  return score;
}

getProgress(){
  return progress;
}

run(){
}
