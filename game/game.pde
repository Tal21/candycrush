String title = "CANDY CRUSH";
int score = 0;
int moves = 0;
float progress;
board grid;
Candy a;
ArrayList<Candy> clicked = new ArrayList<Candy>();

  void mouseClicked(){
  Candy candyCLICK = grid.getCandyAt(mouseX,mouseY);
  if(candyCLICK != null){
    clicked.add(candyCLICK); //<>// //<>//
  }
  if(clicked.size() == 2){
    grid.swap();
    grid.display();
  }
}

void setup(){
  size(1000, 700);
  progress = 0;
  //Candy a = new Candy(0, 0); //<>// //<>//
  grid = new board();
 // Candy a = grid.getCandy(0,0);
  //grid.display();
} //<>// //<>//


void draw(){
  //run();
  //grid.display();
  //System.out.println("done");
  
  //background
  PImage background = loadImage("backdrop.png");
  image(background, -300, 0);
  
  
  //scorebox
  fill(255);
  rect(700, 50, 200, 75);
  fill(0);
  text("Score: " + score, 725, 75);
  
  //movesbox
  fill(255);
  rect(700, 150, 200, 75);
  fill(0);
  text("Moves: "+ moves, 725, 175);
  
  grid.display();
}

boolean gameOver(){
  return true;
}

void updateScore(){
}

void updateBoard(){
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
  //grid.checkboard
  //grid.update board
}
