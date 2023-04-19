import 'dart:io';

void main() {
  int i = 20;
  int b = mf2(i);
  print("the result = ${b + i}");
}

int mf1(int i) {
  int n = 0;
  while (n * n <= i) {
    n += 1;
  }
  stdout.write(n);
  return n - 1;
}

int mf2(int a) {
  int b = 0;
  for (int i = 0; i < 20; i++) {
    var n = mf1(i);
    b = b + n;
  }

  return b;
}
