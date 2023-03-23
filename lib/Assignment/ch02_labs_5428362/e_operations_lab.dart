void main() {
  int i1 = 1;
  int i2 = 2;
  double d1 = 1.0;
  double d2 = 2.0;
  bool b1 = true;
  bool b2 = false;

  //arithmetic
  print(i1 + i2);
  print(d1 * d2);

  //assignment
  print(i1 += 1);
  print(d2 /= 2.0);

  // relational
  print(d1 < d2);
  print(i1 > i2);

  //bool
  print(b1 && b2);
  print(b2 || b1);

  //bitwise
  print(i2 >> 1);
  print(i1 << 3);
}
