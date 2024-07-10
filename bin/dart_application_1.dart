import 'dart:io';

class Demo {
  final int n;

  Demo(this.n);

  void lab3() {
    int m = 0;
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= n; j++) {
        if ((i == j && i > 2 && j < n - 1) ||
            (i == n - j + 1 && j < n - 1 && i < n - 1)) {
          stdout.write('    ');
        } else {
          stdout.write('${m + j}'.padRight(4));
        }
      }
      m = n * i;
      print('');
    }
  }
}

void main() {
  Demo d = Demo(25);
  d.lab3();
}
