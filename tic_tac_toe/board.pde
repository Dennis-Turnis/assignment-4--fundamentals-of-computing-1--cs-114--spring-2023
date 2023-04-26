void drawBoard() {
  strokeWeight(3);
  for (int row = 1; row < BOARD_SIZE; row++) {
    line(row * width / BOARD_SIZE, 0, row * width / BOARD_SIZE, height);
    line(0, row * height / BOARD_SIZE, width, row * height / BOARD_SIZE);
  }
  
  // assigning O to computer and X to player
  strokeWeight(1);
  for (int row = 0; row < BOARD_SIZE; row++) {
    for (int col = 0; col < BOARD_SIZE; col++) {
      float x = row * width / BOARD_SIZE;
      float y = col * height / BOARD_SIZE;
      if (board[row][col] == PLAYER) {
        drawX(x, y, width / BOARD_SIZE);
      } else if (board[row][col] == COMPUTER) {
        drawO(x, y, width / BOARD_SIZE);
      }
    }
  }
}

void resetBoard(){
  // reset board to be re-used after game ends
  for (int row = 0; row < BOARD_SIZE; row++){
    for(int col = 0; col < BOARD_SIZE; col++){
      board[row][col] = 0;
    }
  }
}
