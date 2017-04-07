class swordsman extends unit {

  swordsman(String _unitName, char _unitSymbol, int _x, int _y) {
    super(_x, _y, _unitSymbol);
    unitName = _unitName;
    unitArray[x][y] = 'I';
    println(unitArray[x][y]);
  }

  void move(String direction) {
    if (this.movesLeft > 0) {
      if (direction == "South") {
        resetArrayPos();
        y = y + 1;
        if (y > 10) {
          y = 10;
        }
        establishNewArrayPos();
      }
      if (direction == "North") {
        resetArrayPos(); 
        y = y - 1;
        if (y < 1) {
          y = 1;
        }
        establishNewArrayPos();
      }
      if (direction == "East") {
        resetArrayPos();
        x = x + 1;
        if (x > 15) {
          x = 15;
        }
        establishNewArrayPos();
      }
      if (direction == "West") {
        resetArrayPos(); 
        x = x - 1;
        if (x < 1) {
          x = 1;
        }
        establishNewArrayPos();
      }
    }
  }
}