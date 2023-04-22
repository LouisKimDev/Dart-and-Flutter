import 'shape.dart';

main() {
  Rectangle rec = Rectangle(height: 3.0, width: 2.0);
  Square sqr = Square(side: 4.0);

  print('${rec.getHeight}, ${rec.getWidth}');
  print('${rec.area()}');

  print('${sqr.getHeight}, ${sqr.getWidth}');
  print('${sqr.area()}');
}
