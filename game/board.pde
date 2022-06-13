public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  //float dropTimer;     commented until further notice, depending on whether or not we animate
  //float swapTimer;
  
  public board(){
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board[i].length; j++){
        board[i][j] = new Candy(30 + (i * 70), 120 + (j * 70), i, j);
      }
    }
  }
  
  Candy getCandyAt(int x, int y){
  for(int r = 0; r < 8; r++){
    for(int c = 0; c < 8; c++){
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
  
  int matchesOLD = (checkBoard()).size();
 
  Candy firstTBS = board[(first.x - 30) / 70][(first.y - 120) / 70];
  Candy secondTBS = board[(second.x - 30) / 70][(second.y - 120) / 70];
    
  int typeF = firstTBS.type;
  int typeS = secondTBS.type;
 // int browFOld = first.brow;
//  int bcolFOld = first.bcol;
  
  firstTBS.type = typeS;
  secondTBS.type = typeF;
  
  int matchesNEW = (checkBoard()).size();
  
  if(matchesOLD == matchesNEW){
    //swapping = true;
    firstTBS.type = typeF;
    secondTBS.type = typeS;
    moves++;
  }
}

  Candy getCandy(int i, int j){
    return board[i][j];
  }
    
  ArrayList<Candy> checkBoard(){
    ArrayList<Candy> output = new ArrayList<Candy>();
    ArrayList<Candy> matches = new ArrayList<Candy>();
    int typecheck = board[0][0].getType();
    
    //vertical
    for(int i = 0; i < board.length; i++){
      if(board[i][0] != null){typecheck = board[i][0].getType();}
      
      for(int j = 0; j < board[i].length; j++){
        if(board[i][j] != null){
          if(typecheck == board[i][j].getType()){
            matches.add(board[i][j]);
          }else{
            if(matches.size() >= 3){
              output.addAll(matches);
              matches.clear();
            }else{
              matches.clear();
              matches.add(board[i][j]);
              typecheck = board[i][j].getType();
            }
          } 
        }
      }
      matches.clear();
    }
    
    //horizontal
    matches.clear();
    typecheck = board[0][0].getType();
    for(int i = 0; i < board.length; i++){
      if(board[0][i] != null){typecheck = board[0][i].getType();}
      for(int j = 0; j < board[i].length; j++){
        if(board[j][i] != null){
          if(typecheck == board[j][i].getType()){
            matches.add(board[j][i]);
          }else{
            if(matches.size() >= 3){
              output.addAll(matches);
              matches.clear();
            }else{
              matches.clear();
              matches.add(board[j][i]);
              typecheck = board[j][i].getType();
            }
          }
        }
      }
      matches.clear();
    }
    return output;
  }
  
  void updateBoard(ArrayList<Candy> tobreak){
    Candy elim;
    for(int i = 0; i < tobreak.size(); i++){
      elim = tobreak.get(i);
      score += 100;
      board[elim.bcol][elim.brow] = null;
    }
    //call falling animation
    
    //return board;
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
        if(temp != null){
          temp.display();
        }
      }
    }
  }
  
  boolean canMatch(){
    return false;
  }
  
  void fall(){
    for(int col = 0; col < board.length; col++){
      for(int row = 0; row < board[col].length; row++){
        if(board[col][row] == null){
          
        }
      }
    }
  }
}
