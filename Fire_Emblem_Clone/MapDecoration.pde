class mapDecoration {
  mapTile[][] tiles;
  int tilesHigh, tilesWide;

  mapDecoration(String fileToLoad) {
    String lines[] = loadStrings(fileToLoad);

    tilesHigh = lines.length;
    tilesWide = lines[0].length();

    float tileWidth = width/tilesWide;
    float tileHeight = tileWidth;

    tiles = new mapTile[tilesWide][tilesHigh];

    for (int y = 0; y < tilesHigh; y++) {
      for (int x = 0; x < tilesWide; x++) {
        char tileType = lines[y].charAt(x);
        tiles[x][y] = new mapTile(x*tileWidth, y*tileHeight, tileWidth, tileHeight, tileType);
      }
    }
  }


  void display() {
    for (int y = 0; y < tilesHigh; y++) {
      for (int x = 0; x < tilesWide; x++) {
        tiles[x][y].display();
      }
    }
  }
}