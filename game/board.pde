public class board{
  int width = 8;
  int height = 8;
  Candy[][] board = new Candy[height][width];
  ArrayList<Candy> fallingCandies = new ArrayList<Candy>();
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
<<<<<<< HEAD
    Candy elim;
    for(int i = 0; i < tobreak.size(); i++){
      elim = tobreak.get(i);
      score += 100;
      board[elim.bcol][elim.brow] = null;
    }
    //call falling animation
=======
>>>>>>> 4537e0bd3e0f64314ff57444483a940ea9c1cf78
    
    if(tobreak.size() > 0){
      falling = true;
      
      for(int counter = 0; counter < tobreak.size(); counter++){
        Candy elim = tobreak.get(counter);
        int col = elim.bcol;
        board[col][elim.brow] = null;
        for(int above = elim.brow; above >= 1; above--){
          if(board[col][above] == null && board[col][above-1] != null){
            //update y location
            //board[col][above-1].y = board[col][above-1].y + 70;
            
            
            //switch spots in queue
            board[col][above-1].brow += 1;
            board[col][above] = board[col][above -1];
            board[col][above -1] = null;
            
            //set falling dist
            board[col][above].setFallDist(board[col][above].getFallDist() + 70);
            
             //add to fallingCandies
            if(fallingCandies.indexOf(board[col][above]) == -1){
              fallingCandies.add(board[col][above]);
              
            }
         }
         
        }
        if(board[col][0] == null){
          Candy generate = new Candy(col*70 + 30, 0, col,0);
          board[col][0] = generate;
          //add falling
          generate.setFallDist(155);
          fallingCandies.add(generate);
        }
        //System.out.println(elim.brow + " " + elim.bcol);
      }
    }
    /*
    for(int i = 0; i < fallingCandies.size(); i++){
      Candy current = fallingCandies.get(i);
     System.out.println(current.brow + " " + current.bcol);
    }
    */
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
      current.y += current.getFallDist()/100;
      System.out.println(current.brow + " " + current.bcol);
    }
    
    System.out.println("done");
    
  }
  
}
