class swordsman extends unit {

  swordsman(String _unitName, String _movementType, char _unitSymbol, int _x, int _y) {
    super(_x, _y, _unitSymbol, _movementType);
    unitName = _unitName;
    weaponType = "sword";
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