import 'dart:io';
import 'dart:math';
List<int> vicislenie(List<List<int>> temperature) { 
  List<int> srtempa = []; 
  for (int i = 0; i < 12; i++) { 
      int a = 0; 
    for (int j = 0; j < 30; j++) { 
    a += temperature[i][j];
    }
   a ~/= 30; 
  srtempa.add(a);
  }
  return (srtempa);
}

void main() {
  int max = 31;
  int min = -12;

  List<List<int>> temperature = List.generate(
      12, (i) => List.generate(30, (j) => min + Random().nextInt(max - min)));
    List<int> sredtemp = vicislenie(temperature);
    print(sredtemp);
}