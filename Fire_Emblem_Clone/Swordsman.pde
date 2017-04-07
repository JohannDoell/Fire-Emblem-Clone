class swordsman extends unit {

  swordsman(String _unitName, String _movementType, char _unitSymbol, int _x, int _y) {
    super(_x, _y, _unitSymbol, _movementType);
    unitName = _unitName;
    weaponType = "sword";
    unitArray[x][y] = 'I';
    // println(unitArray[x][y]);
  }

  void move(String direction) {
    if (this.movesLeft > 0) {
      resetArrayPos(); 
      if (direction == "South") {
        y = y + 1;
      }
      if (direction == "North") {
        y = y - 1;
      }
      if (direction == "East") {
        x = x + 1;
      }
      if (direction == "West") {
        x = x - 1;
      }
      constrainUnitToMap();
      establishNewArrayPos();
    }
  }
}