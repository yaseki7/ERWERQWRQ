import 'dart:io';
import 'dart:math';
 
void main() {
  int x_0 = -1; 
  int x_1 = 3;  
  int y_0 = -2; 
  int y_1 = 4;  
  print("Введите А");
  double x = double.parse(stdin.readLineSync()!); 
  print("Введите В");
  double y = double.parse(stdin.readLineSync()!);
  if (x_0 < x && x < x_1 && y_0 < y && y < y_1) { 
    print("Входит");
  } else {
    print("Не входит");
  }
}