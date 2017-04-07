class gameManager {

  gameManager() {
  }

  void handleGameState() {
    if (state == 0) {
      background(255);
      battlemap.displayBoard();
      thisLevel.display();
      ike.display();
      marth.display();
    }
  }

  void handleKeyPress() {
    if (state == 0) {
      if (checkSelection("ike")) {
        ike.move(getDesiredUnitDirection());
      } else if (checkSelection("marth")) {
        marth.move(getDesiredUnitDirection());
      }
    }
  }

  void handleClick() {
    if (state == 0) {
      ike.select();
      marth.select();
    }
  }

  boolean checkSelection(String characterToCheckFor) {
    if (selectedUnit == characterToCheckFor) {
      return true;
    } else {
      return false;
    }
  }

  String getDesiredUnitDirection() {
    if (key == 'w') {
      return "North";
    } else if (key == 'a') {
      return "West";
    } else if (key == 's') {
      return "South";
    } else if (key == 'd') {
      return "East";
    } else {
      return "NoDirection";
    }
  }
}