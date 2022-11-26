import 'dart:io';
import 'dart:math';

void main() {
  var mas = [];
  for (int i = 0; i < 10; i++) {
    mas.add(Random().nextInt(10));
  }
  print(mas);
  int min_index = 0;
  int min = mas.first;
  for (int i = 0; i < mas.length; i++) {
    if (min > mas[i]) {
      min = mas[i];
      min_index = i;
    }
    print(min);
    print(min_index);
  }
}
