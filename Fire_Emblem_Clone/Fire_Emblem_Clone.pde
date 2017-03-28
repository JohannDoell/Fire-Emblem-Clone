// Johann Doell
// Fire Emblem clone

map battlemap;

void setup() {
  size(600, 600);
  battlemap = new map();
  int [][] unitArray = new int[15][15];
  int [][] tileArray = new int
}

void draw() {
  battlemap.displayChessBoard();
}