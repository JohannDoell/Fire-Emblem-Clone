// Johann Doell
// Fire Emblem clone

int state;
mapDecoration thisLevel;
_map battlemap;
gameManager game;
char [][] unitArray;
swordsman ike;
String selectedUnit;
mapTile[][] tiles;

void setup() {
  size(600, 600);
  state = 0;
  game = new gameManager();
  unitArray = new char[16][11];
  battlemap = new _map();
  thisLevel = new mapDecoration("Levels/templatelevel.txt");
  ike = new swordsman("ike");
  ike.movesLeft = 3;
}

void draw() {
  game.handleGameState();
}

void keyPressed() {
  game.handleKeyPress();
}

void mousePressed() {
  game.handleClick();
}