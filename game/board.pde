public class board{
  Candy[][] board;
  
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
  
}
