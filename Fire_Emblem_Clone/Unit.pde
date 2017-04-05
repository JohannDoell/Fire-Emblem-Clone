class unit {
  int x, y;
  int movesLeft;
  String unitName;

  unit() {
  }

  void display() {
    if (selectedUnit == unitName) {
      fill(255);
    } else {
      fill(0);
    }
    ellipse(x*battlemap.cellSize-(battlemap.cellSize/2), y*battlemap.cellSize-(battlemap.cellSize/2), 20, 20);
  }

  void select() {
    if (mouseX > x*battlemap.cellSize-(battlemap.cellSize/2)-20 && mouseX < x*battlemap.cellSize-(battlemap.cellSize/2)+20) {
      if (mouseY > y*battlemap.cellSize-(battlemap.cellSize/2)-20 && mouseY < y*battlemap.cellSize-(battlemap.cellSize/2)+20) {
        if (selectedUnit != unitName) {
          selectedUnit = unitName;
        } else {
          selectedUnit = "";
        }
      }
    }
  }
}