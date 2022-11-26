import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int proizviden = 1;
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      proizviden *= i;
    }
  }
  print(proizviden);
}
