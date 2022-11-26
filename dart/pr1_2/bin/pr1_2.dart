import 'dart:io';
import 'dart:math';

void main() {
  double srednee = 0; 
  double summa = 0;
  int proizveden = 1; 
  int chisla_lenght = 0;
  bool b = true;
  while (b) { 
    int a = int.parse(stdin.readLineSync()!);
    if (a == 0) {
      b = false;
    } else {
      chisla_lenght++; 
      summa = a + summa;
      proizveden = a * proizveden;
    }
  }
  srednee = (summa / chisla_lenght); 
  print('summa = $summa');
  print('proizveden = $proizveden');
  print('srednee = $srednee');
}
