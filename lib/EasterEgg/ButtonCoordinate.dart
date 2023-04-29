class ButtonCoordinate {
  int _col = 0;
  int _row = 0;

  ButtonCoordinate(int col, int row) {
    _col = col;
    _row = row;
  }

  int col() => _col;
  int row() => _row;
}
