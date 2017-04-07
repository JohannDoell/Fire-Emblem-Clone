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
        constrainUnitToMap();
        establishNewArrayPos();
      }
      if (direction == "North") {
        resetArrayPos(); 
        y = y - 1;
        constrainUnitToMap();
        establishNewArrayPos();
      }
      if (direction == "East") {
        resetArrayPos();
        x = x + 1;
        constrainUnitToMap();
        establishNewArrayPos();
      }
      if (direction == "West") {
        resetArrayPos(); 
        x = x - 1;
        constrainUnitToMap();
        establishNewArrayPos();
      }
    }
  }
}