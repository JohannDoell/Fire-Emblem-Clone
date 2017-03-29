class map {

  int rows, cols;
  float cellSize;
  boolean isFilledBlack;
  float theBorderSize;

  map () {
    rows = width/60;
    cols = height/40;
    theBorderSize = 15;
    cellSize = (width) / float(cols);
  }

  void displayBoard() {
    for (int x = 0; x < cols; x++) {
      for (int y = 0; y < rows; y++) {
        fill(255);
        rect(x*cellSize, y*cellSize, cellSize, cellSize);
      }
    }
  }
}