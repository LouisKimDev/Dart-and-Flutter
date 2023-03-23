double f_OF_XY([int x = 0, int y = 1]) {
  double z = (x * x) + (x / y);
  return z;
}

void main() {
  double result1;

  result1 = f_OF_XY(3, 4);

  print("f of 3, 4 is : $result1");
  print("f of 5, 8 is : ${f_OF_XY(5, 8)}");
}
