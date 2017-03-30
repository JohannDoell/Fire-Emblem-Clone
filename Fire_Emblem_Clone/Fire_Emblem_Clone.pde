// Johann Doell
// Fire Emblem clone

int state;
mapDecoration thisLevel;
map battlemap;
char [][] unitArray;
swordsman ike;


void setup() {
  size(600, 600);
  int state = 0;
  unitArray = new char[10][15];
    battlemap = new map();
  thisLevel = new mapDecoration("Levels/templatelevel.txt");
  ike = new swordsman();
}

void draw() {
  if (state == 0) {
    background(255);
    battlemap.displayBoard();
    thisLevel.display();
  }
}