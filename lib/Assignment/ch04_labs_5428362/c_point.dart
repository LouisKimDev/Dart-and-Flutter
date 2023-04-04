class Point {
  double _x, _y;

  Point(this._x, this._y) {
    _x = 0.0;
    _y = 0.0;
  }
  move(double x, double y) {
    _x += x;
    _y += y;
  }

  display() {
    print("x: $_x, y: $_y");
  }
}

void main() {
  var pt = Point(2, 6.5);

  pt.display();
  pt.move(-2, 3.25);
  pt.display();
  pt.move(3.5, -4.5);
  pt.display();
}
