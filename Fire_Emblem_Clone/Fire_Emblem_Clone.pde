// Johann Doell
// Fire Emblem clone

int state;
mapDecoration thisLevel;
map battlemap;
char [][] unitArray;
char [][] mapArray;
swordsman ike;
String selectedUnit;
mapTile[][] tiles;

void setup() {
  size(600, 600);
  int state = 0;
  unitArray = new char[15][10];
  mapArray = new char[15][10];
  battlemap = new map();
  thisLevel = new mapDecoration("Levels/templatelevel.txt");
  ike = new swordsman("ike");
  ike.movesLeft = 3;
}

void draw() {
  if (state == 0) {
    background(255);
    battlemap.displayBoard();
    thisLevel.display();
    ike.display();
  }
}

void displayMoves() {
  if (selectedUnit == "ike") {
    println(ike.movesLeft);
  }
}

void keyPressed() {
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

void mousePressed() {
  ike.select();
}