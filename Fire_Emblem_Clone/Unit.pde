class unit {
  int x, y;
  int movesLeft;
  String unitName, weaponType, movementType;
  // Movement Types = "foot","fly","horse"
  // Weapon Types = "sword","axe","lance" (Add more later)
  char unitSymbol;

  unit(int _x, int _y, char _unitSymbol, String _movementType) {
    x = _x;
    y = _y;
    unitSymbol = _unitSymbol;
    movementType = _movementType;
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

  void resetArrayPos() {
    unitArray[x][y] = ' ';
  }

  void establishNewArrayPos() {
    unitArray[x][y] = unitSymbol;
  }

  void constrainUnitToMap() {
    if (y > 10) {
      y = 10;
    } else if (y < 1) {
      y = 1;
    } else if (x > 15) {
      x = 15;
    } else if (x < 1) {
      x = 1;
    }
  }
}