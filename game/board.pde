public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  //float dropTimer;     commented until further notice, depending on whether or not we animate
  //float swapTimer;
  
  ArrayList<Candy> clicked = new ArrayList<Candy>();
  
  void mouseClicked(){
    text("hi", 20, 20);
  Candy candyCLICK = getCandyAt(mouseX,mouseY);
  
  if(candyCLICK != null){
    clicked.add(candyCLICK);
  }
  if(clicked.size() == 2){
    swap();
    text("SWAP DONE", 20, 20);
  }
}
  
  public board(){
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board[i].length; j++){
        board[i][j] = new Candy(30 + (i * 70), 120 + (j * 70));
      }
    }
    //System.out.println("done");
  }
  
  Candy getCandyAt(int x, int y){
  for(int r = 0; r < 9; r++){
    for(int c = 0; c < 9; c++){
      Candy current = board[r][c];
      float d = dist(x,y,current.x,current.y);
      if(d <= current.radius){
        return current;
      }
    }
  }
  return null;
}
  
  
  
 void swap(){
  Candy first = clicked.remove(0);
  Candy second = clicked.remove(0);
  
  Candy firstTBS = board[(first.x - 10) / 10][(first.y - 10) / 10];
  Candy secondTBS = board[(second.x - 10) / 10][(second.y - 10) / 10];
  
  board[(first.x - 10) / 10][(first.y - 10) / 10] = secondTBS;
  board[(second.x - 10) / 10][(second.y - 10) / 10] = firstTBS;
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
