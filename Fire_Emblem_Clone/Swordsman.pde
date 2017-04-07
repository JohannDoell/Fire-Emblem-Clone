class swordsman extends unit {

  swordsman(String _unitName, String _movementType, char _unitSymbol, int _x, int _y) {
    super(_x, _y, _unitSymbol, _movementType);
    unitName = _unitName;
    weaponType = "sword";
    unitArray[x][y] = 'I';
    // println(unitArray[x][y]);
  }
}