class swordsman extends unit {

  swordsman(String _unitName) {
    super();
    x = 9;
    y = 2;
    unitName = _unitName;
    unitArray[9][2] = 'I';
    println(unitArray[x][y]);
  }

  void move(String direction) {
    if (this.movesLeft > 0) {
      if (direction == "South") {
        unitArray[x][y] = ' ';
        y = y + 1;
        if (y > 10) {
          y = 10;
        }
        unitArray[x][y] = 'I';
      }
      if (direction == "North") {
        unitArray[x-1][y-1] = ' ';
        y = y - 1;
        if (y < 1) {
          y = 1;
        }
        unitArray[x][y] = 'I';
      }
      if (direction == "East") {
        unitArray[x-1][y-1] = ' ';
        x = x + 1;
        if (x > 15) {
          x = 15;
        }
        unitArray[x][y] = 'I';
      }
      if (direction == "West") {
        unitArray[x][y] = ' ';
        x = x - 1;
        if (x < 1) {
          x = 1;
        }
        unitArray[x][y] = 'I';
      }
    }
  }
}