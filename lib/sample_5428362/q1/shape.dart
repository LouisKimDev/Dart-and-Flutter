class Rectangle {
  double height;
  double width;

  Rectangle({this.height = 0.0, this.width = 0.0});

  double get getHeight => height;
  set setHeight(double height) => this.height = height;

  double get getWidth => width;
  set setWidth(double width) => this.width = width;

  double area() {
    return height * width;
  }
}

class Square extends Rectangle {
  Square({double side = 0.0}) : super(height: side, width: side);
}
