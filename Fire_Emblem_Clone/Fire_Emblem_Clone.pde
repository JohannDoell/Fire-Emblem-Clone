// Johann Doell
// Fire Emblem clone

int state;
mapDecoration thisLevel;
map battlemap;
char [][] unitArray;
swordsman ike;
String selectedUnit;


void setup() {
  size(600, 600);
  int state = 0;
  unitArray = new char[15][10];
  battlemap = new map();
  thisLevel = new mapDecoration("Levels/templatelevel.txt");
  ike = new swordsman();
}

void draw() {
  if (state == 0) {
    background(255);
    battlemap.displayBoard();
    thisLevel.display();
    ike.display();
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