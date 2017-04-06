class gameManager {

  gameManager() {
  }

  void handleGameState() {
    if (state == 0) {
      background(255);
      battlemap.displayBoard();
      thisLevel.display();
      ike.display();
    }
  }

  void createUnitArray(String fileToLoad) {
    String lines[] = loadStrings(fileToLoad);
    
  }

  void handleKeyPress() {
    if (state == 0) {
      if (key == 's') {
        if (selectedUnit == "ike") {
          ike.move("South");
        }
      }
      if (key == 'w') {
        if (selectedUnit == "ike") {
          ike.move("North");
        }
      }
      if (key == 'd') {
        if (selectedUnit == "ike") {
          ike.move("East");
        }
      }
      if (key == 'a') {
        if (selectedUnit == "ike") {
          ike.move("West");
        }
      }
    }
  }

  void handleClick() {
    if (state == 0) {
      ike.select();
    }
  }
}