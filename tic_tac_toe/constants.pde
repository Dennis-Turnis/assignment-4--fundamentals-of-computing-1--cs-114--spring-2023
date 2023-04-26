void keyPressed() {
  //if(checkWin() == false && checkTie() == false){
    println("Game in progress . . .");
    if (key >= '1' && key <= '9') {
      int index = key - '1';
      int col = index / BOARD_SIZE;
      int row = index % BOARD_SIZE;
      
      if (board[row][col] == 0) {
        userTurn(row, col);
        currentPlayer = COMPUTER;
        computerTurn(); 
      } 
      else if (board[row][col] !=0){
        println("Space is already occupied");
      }
    } 
    else {
      println("Wrong Input!");
    }    
  
  if(checkTie() == true && checkTie() == true){
    println("Nobody wins!");
    println("Press key 'r' to replay");
    
    if(key == 'r'){
      resetBoard();
    }
  }
  else if(checkWin() == true && checkTie() == false){
    System.out.println("Game has ended");
    println("Press key 'r' to replay"); 
      
    if(key == 'r'){
      resetBoard();
    }
  }
}

boolean checkWin() {
  // Check for a winning combination in each row, column and diagonal
  if(board[0][0] == 1){
    if(board[1][0] ==1){
      if(board[2][0] == 1){
      }
    }
    println("You Win!");
    return true; 
  } 

  if(board[0][1] == 1){
    if(board[1][1] ==1){
      if(board[2][1] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  if(board[0][2] == 1){
    if(board[1][2] ==1){
      if(board[2][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  if(board[0][0] == 1){
    if(board[0][1] ==1){
      if(board[0][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  } 

  if(board[1][0] == 1){
    if(board[1][1] ==1){
      if(board[1][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  if(board[2][0] == 1){
    if(board[2][1] ==1){
      if(board[2][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  if(board[0][0] == 1){
    if(board[1][1] ==1){
      if(board[2][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  else if(board[2][0] == 1){
    if(board[1][1] ==1){
      if(board[0][2] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  if(board[0][0] == 2){
    if(board[1][0] ==1){
      if(board[2][0] == 1){
      }
    }
    println("You Win!");
    return true; 
  }

  else if(board[0][1] == 2 && board[1][1] == 2 && board[2][1] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[0][2] == 2 && board[1][2] == 2 && board[2][2] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[0][0] == 2 && board[0][1] == 2 && board[0][2] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[1][0] == 2 && board[1][1] == 2 && board[1][2] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[2][0] == 2 && board[2][1] == 2 && board[2][2] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2) {
    println("The computer won!");
    return true;
  } 

  else if(board[2][0] == 2 && board[1][1] == 2 && board[0][2] == 2) {
    println("The computer won!");
    return true;
  }

else return false;
}

void userTurn(int row, int col) {
  // Check if the chosen position is empty
  if (board[row][col] == 0) {
  // Place the user's symbol in the chosen position
    board[row][col] = PLAYER;
  }
}

void computerTurn() {
  // Generate a random position on the board
  int row = int(random(BOARD_SIZE));
  int col = int(random(BOARD_SIZE));

  // Keep generating random positions until an empty spot is found
  while (board[row][col] != 0) {
    row = int(random(BOARD_SIZE));
    col = int(random(BOARD_SIZE));
  }

  // Place the computer's symbol in the chosen position
  board[row][col] = COMPUTER;

  // Switch to the player's turn
  currentPlayer = PLAYER;
  System.out.println("computer has played");
  println("Your turn");
  println();
}

//Gets percents of spaces filled in the board
double getFilled() {
  int sum = 0;
  for(int row = 0; row < 3; row++){
    for (int col = 0; col < 3; col++){
      sum = sum + board [row][col];
    }
  }
  
  return sum / 9;
}

 boolean checkTie() {
 if (getFilled() < 3) {
  return false;
 }else {
  return true;
 }
}    
