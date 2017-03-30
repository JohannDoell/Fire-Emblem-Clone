class mapTile {
  float x, y;
  float w, h;
  char tileType;
  PImage theTile;

  mapTile(float _x, float _y, float _w, float _h, char _tileType) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    tileType = _tileType;

    if (tileType == '#') {
      theTile = loadImage("platform.png");
    } else if (tileType == 'C') {
      theTile = loadImage("coin.png");
    } else if (tileType == 'B') {
      theTile = loadImage("boxItem.png");
    } else {
      theTile = loadImage("empty.png");
    }
  }

  void display() {
    image(theTile, x, y, w, h);
  }
}