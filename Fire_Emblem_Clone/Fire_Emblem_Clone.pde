// Johann Doell
// Fire Emblem clone

mapDecoration thisLevel;
map battlemap;

void setup() {
  size(600, 600);
  battlemap = new map();
  thisLevel = new mapDecoration("templatelevel.txt");
}

void draw() {
  background(255);
  battlemap.displayBoard();
  thisLevel.display();
}