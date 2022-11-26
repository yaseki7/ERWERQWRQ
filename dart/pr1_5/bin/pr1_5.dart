import 'dart:io';
import 'dart:math';
void main() {
  String clova = stdin.readLineSync()!; 
  int kolvoslov = 1; 
  bool a = false; 
  for (int i = 0; i < clova.length; i++) { 
    if (clova[i] != " ") {  
      a = true; 
    } else if (clova[i] == " " && a) {
      kolvoslov++;
    }
  }
  if (a) { // 
    clova = "start " + clova + " end";
    print(kolvoslov);
    print(clova);
  } else { 
    print("нет слов");
  }
}