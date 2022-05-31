public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  //float dropTimer;     commented until further notice, depending on whether or not we animate
  //float swapTimer;
  
  public board(){
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board[i].length; j++){
        board[i][j] = new Candy(j*30, i*30);
      }
    }
    //System.out.println("done");
  }
  
  Candy getCandy(int i, int j){
    return board[i][j];
  }
    
  
  Candy[][] updateBoard(){
    return board;
  }
  
  boolean loseCheck(){
    for( int i = 0; i < height; i++){
      for(int j = 0; j < width; j++){
        
      }
    }
    return false;
  }
  
  boolean powerActivated(){
    return false;
  }

  
  void display(){
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board[i].length; j++){
        Candy temp = getCandy(i,j);
        temp.display();
       
      }
    }
  }
  
  boolean canMatch(){
    return false;
  }
  /*
  Queue<candy> boardCheck(){           //Checks if there is matching before gamestart/player
    return null;
  }
  */
}
