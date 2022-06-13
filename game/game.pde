String title = "CANDY CRUSH";
int score = 0;
int moves = 10;
int level = 1;
boolean falling = false;
boolean swapping = false;
int timer = -1;
float progress;
board grid;
Candy a;
ArrayList<Candy> clicked = new ArrayList<Candy>();
<<<<<<< HEAD
boolean PLAY = false;
boolean end = false;



=======
 //<>// //<>// //<>// //<>// //<>// //<>//
>>>>>>> 4537e0bd3e0f64314ff57444483a940ea9c1cf78
  private boolean inBounds(int r, int c){
    return 0 <= r && 0 <= c && grid.width > r && grid.height > c; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  }
 //<>// //<>// //<>//

  void mouseClicked(){

  Candy candyCLICK = grid.getCandyAt(mouseX,mouseY);
  if(PLAY = true){
  if(candyCLICK == null){
    return;
  } //<>// //<>// //<>// //<>// //<>//
   //<>// //<>// //<>// //<>// //<>// //<>//
  if(candyCLICK != null && clicked.size() == 0){ //<>// //<>//
    clicked.add(candyCLICK); //<>// //<>// //<>// //<>// //<>//
  } //<>// //<>// //<>// //<>// //<>// //<>//
else{ //<>// //<>// //<>// //<>// //<>// //<>//
      int row = (candyCLICK.x-30) / 70; //<>// //<>//
      int col = (candyCLICK.y-120) / 70; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
     
      Candy thing = clicked.get(0); //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
      int rowOLD = (thing.x-30) / 70;
      int colOLD = (thing.y-120) / 70; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
     
      for(int i = -1; i < 2; i++){ //<>// //<>// //<>//
        for(int j = -1; j < 2; j++){
          if(inBounds(row+i,col+j) && (i == 0 || j == 0)){
            if(row+i == rowOLD && col+j == colOLD){
              clicked.add(candyCLICK);
            }
          } //<>// //<>// //<>// //<>// //<>// //<>//
        }
      } //<>// //<>//
      
      if(clicked.size() == 1){
        clicked.remove(0);
      }
  }
  if(clicked.size() == 2){
    grid.swap();
    grid.display();
<<<<<<< HEAD
    moves--;
 //   run();
  }  //<>//
  } //<>//
}
  //<>//
   //<>// //<>//
 //<>// //<>//
=======
    moves --;
    
  } 

}   //<>//
 //<>//
>>>>>>> 4537e0bd3e0f64314ff57444483a940ea9c1cf78
void setup(){ //<>//
  size(1000, 700); //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  progress = 0; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  grid = new board(); //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  run(); //<>// //<>// //<>// //<>// //<>// //<>//
  timer = -1; //<>//
   //<>//
}   //<>//
 //<>//
 //<>//


void draw(){
  //grid.display();
  //System.out.println("done"); //<>//
<<<<<<< HEAD
    if((grid.checkBoard()).size() == 0 && moves != 0 && end == false){
        PLAY = true;
    } else{
      PLAY = false;
    } //<>//
    //background
    PImage background = loadImage("backdrop.png");
    image(background, -300, 0); //<>//
     //<>//
    
    //scorebox
    fill(255); //<>// //<>// //<>//
    rect(700, 50, 200, 75); //<>//
    fill(0);
    text("Score: " + score, 725, 75);
     //<>// //<>//
    //movesbox
    fill(255);
    rect(700, 150, 200, 75);
    fill(0);
    text("Moves: "+ moves, 725, 175);
    
    fill(255);
    rect(700, 250, 200, 70);
    fill(0);
    text(title, 725, 275);
    text("GET 1000 POINTS", 725, 300);
    
    if(score >= 1000){
    fill(255);
    rect(700, 350, 200, 70);
    fill(0);
    text("YOU WIN! :D", 725, 375);
    }
    
    else if(moves == 0){
    fill(255);
    rect(700, 350, 200, 70);
    fill(0);
    text("YOU LOSE! D:", 725, 375);
    }
    
    //run();
    grid.display();
    if(falling){
      
    }else{
      ArrayList<Candy> print = grid.checkBoard();
      /*System.out.println(print.size());
      while(print.size() > 0){
        Candy test = print.remove(0);
        System.out.println(test.brow + " " + test.bcol);
=======

  //background
  PImage background = loadImage("backdrop.png");
  image(background, -300, 0); //<>// //<>//
   //<>//
   //<>//
  //scorebox //<>// //<>//
  fill(255); //<>// //<>// //<>//
  rect(700, 50, 200, 75);
  fill(0); //<>//
  text("Score: " + score, 725, 75); //<>// //<>//
   //<>// //<>//
  //movesbox
  fill(255);
  rect(700, 150, 200, 75);
  fill(0);
  text("Moves: "+ moves, 725, 175);
  
  

  grid.display();
  
  
  if(falling){
    if(timer == -1){
      timer = 100;
    }else if(timer == 0){
      timer = -1;
      falling = false;
      while(grid.fallingCandies.size() >0){
        grid.fallingCandies.remove(0).setFallDist(0);
>>>>>>> 4537e0bd3e0f64314ff57444483a940ea9c1cf78
      }
    }else{
      grid.fall();
      timer--;
    }
  }else{
    ArrayList<Candy> check = grid.checkBoard();
    if(check.size() > 0){
      grid.updateBoard(check);
    }
  }
}

boolean gameOver(){
  return true;
}

void updateScore(){
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
