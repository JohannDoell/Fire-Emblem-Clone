// Johann Doell
// Fire Emblem clone

int rows, cols;
float cellSize;
boolean isFilledBlack;
float theBorderSize;

void setup() {
  size(600, 600);
  rows = 15;
  cols = 15;
  theBorderSize = 15;

  cellSize = (width - theBorderSize) / float(cols);
}

void draw() {
  displayChessBoard();
}

void displayChessBoard() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      fill(255);
      rect(x*cellSize, y*cellSize, cellSize, cellSize);
    }
  }
}