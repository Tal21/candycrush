public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  ArrayList<Candy> fallingCandies = new ArrayList<Candy>();

  
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
  
  if(matchesNEW == 0){
    firstTBS.type = typeF;
    secondTBS.type = typeS;
    moves++;
  }else{
    ArrayList<Candy> print = grid.checkBoard();
    updateBoard(print);
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
      if(getCandy(i,0).type != -1){typecheck = board[i][0].getType();}
      
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
    for(int i = 0; i < tobreak.size(); i++){
      Candy elim = tobreak.get(i);
      elim.type = -1;
    }
    
<<<<<<< HEAD
    for(int r = 7; r > -1; r--){
      for(int c = 0; c < 8; c++){
        if(getCandy(r,c).type == -1){
          int count = r;
          while(count > -1){
            if(count == 0){
              getCandy(count, c).type = (int)(Math.random() * (5-1+1));
            }
            getCandy(count,c).type = getCandy(count-1,c).type;
            count--;
          }
        }
      }
    }
  }
  
  void updateBoard2(){
    while(fallingCandies.size() > 0){
       Candy move = fallingCandies.remove(0);
       //System.out.println(move.brow+ " " + move.bcol);
       /*
       board[move.bcol][move.brow +1] = board[move.bcol][move.brow];
       board[move.bcol][move.brow +1].brow += 1;
       */
       board[(move.x - 30) / 70][(move.y - 120) / 70] = move;
       
=======
    
  }
  
  
  boolean loseCheck(){
    for( int i = 0; i < height; i++){
      for(int j = 0; j < width; j++){
        
      }
>>>>>>> acb0bbd9c4e646c7908ed8248c1d60e4b2434dae
    }
    
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
  
<<<<<<< HEAD
  void fall(){
    /*
    for(int cols = 0; cols < board.length; cols++){
      for(int rows = board[cols].length - 1; rows >= 0; rows--){
        //check if in place if not then move a little
        //if in place then everything snaps
        /*
        falling = false;
        Candy current = board[cols][rows];
        if(getCandyAt(current.x, current.y + current.radius) == null){
          current.y += 20;
          falling = true;
        }
       //OR
        Candy current = board[cols][rows];
        if(current.isFalling){
          //SOMEHOW ACCOUNT FOR MORE THAN ONE CANDY
          current.y += current.getFallDist()/100;
          System.out.println("fall!");
        }
        
      }
      
    }
    */
    for(int i = 0; i < fallingCandies.size(); i++){
      Candy current = fallingCandies.get(i);
      current.y += 70/10;
      //System.out.println(current.brow + " " + current.bcol);
    }
    
    for(int j = 0; j < board.length; j++){
      
    }
    
  }
=======
>>>>>>> acb0bbd9c4e646c7908ed8248c1d60e4b2434dae
  
}
