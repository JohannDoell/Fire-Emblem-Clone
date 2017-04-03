class swordsman 
//extends unit 
{

  swordsman() {
    x = 9;
    y = 2;
    unitArray[9][2] = 'I';
    println(unitArray[x-1][y-1]);
  }

  void display() {
    if (selectedUnit == "ike") {
      fill(255);
    } else {
      fill(0);
    }
    ellipse(x*battlemap.cellSize-(battlemap.cellSize/2), y*battlemap.cellSize-(battlemap.cellSize/2), 20, 20);
  }

  void select() {
    if (mouseX > x*battlemap.cellSize-(battlemap.cellSize/2)-20 && mouseX < x*battlemap.cellSize-(battlemap.cellSize/2)+20) {
      if (mouseY > y*battlemap.cellSize-(battlemap.cellSize/2)-20 && mouseY < y*battlemap.cellSize-(battlemap.cellSize/2)+20) {
        if (selectedUnit != "ike") {
          selectedUnit = "ike";
        } else {
          selectedUnit = "";
        }
      }
    }
  }

  void move(String direction) {
    if (direction == "South") {
      unitArray[x-1][y-1] = ' ';
      y = y + 1;
      if (y > 10) {
        y = 10;
      }
      unitArray[x-1][y-1] = 'I';
    }
    if (direction == "North") {
      unitArray[x-1][y-1] = ' ';
      y = y - 1;
      if (y < 1) {
        y = 1;
      }
      unitArray[x-1][y-1] = 'I';
    }
    if (direction == "East") {
      unitArray[x-1][y-1] = ' ';
      x = x + 1;
      if (x < 1) {
        x = 1;
      }
      unitArray[x-1][y-1] = 'I';
    }
    if (direction == "West") {
      unitArray[x-1][y-1] = ' ';
      x = x - 1;
      if (x > 15) {
        x = 15;
      }
      unitArray[x-1][y-1] = 'I';
    }
  }