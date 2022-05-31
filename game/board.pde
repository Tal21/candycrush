public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  //float dropTimer;     commented until further notice, depending on whether or not we animate
  //float swapTimer;
  
  public board(){
   board = new Candy[8][8];
   for (int i = 0; i < board.length; i++){
     for (int k = 0; k< board[i].length; k++){
       board[i][k] = new Candy(30*i, 30*k);
     }
   }
  }
  
  void display(){
    for (int i = 0; i < board.length; i++){
     for (int k = 0; k< board[i].length; k++){
       Candy temp = board[i][k];
       temp.display();
       System.out.println(i);
     }
   }
  }

candy[][] updateBoard(board){
  return board;
}

boolean loseCheck(){
  for( int i = 0; i < height; i++){
    for(int j = 0; j < width; j++){
      
  return false;
}

boolean powerActivated(){
  return false;
}

void display(){
}

boolean canMatch(){
  return false;
}

Queue<candy> boardCheck(){           //Checks if there is matching before gamestart/player
  return null;
>>>>>>> d8d8cae2bc5903a0747923f45ba58e9231b0b8a9
}
