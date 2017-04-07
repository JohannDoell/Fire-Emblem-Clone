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

  void handleKeyPress() {
    if (state == 0) {
      if (key == 's') {
        if (checkSelection("ike")) {
          ike.move("South");
        }
      }
      if (key == 'w') {
        if (checkSelection("ike")) {
          ike.move("North");
        }
      }
      if (key == 'd') {
        if (checkSelection("ike")) {
          ike.move("East");
        }
      }
      if (key == 'a') {
        if (checkSelection("ike")) {
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
  
  boolean checkSelection(String characterToCheckFor){
    if (selectedUnit == characterToCheckFor) {
     return true; 
    } else {
     return false; 
    }
  }
}