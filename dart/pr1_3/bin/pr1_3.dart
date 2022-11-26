import 'dart:io';
import 'dart:math';

void main() {
  List<String> list = [];
  bool a = true;
  while (a) {
    String b = stdin.readLineSync()!;
    if (b != " ") { 
      list.add(b); 
    } else {
      a = false; 
    }
  }
  int min = int.parse(list[0]); 
  int minvstroke = list[0].length;
  int max = int.parse(list[0]);
  int maxvstroke = list[0].length;

  for (int i = 0; i < list.length; i++) { 
    if (minvstroke > list[i].length) { 
      min = int.parse(list[i]); 
      minvstroke = list[i].length; 
    } else if (maxvstroke < list[i].length) {
      max = int.parse(list[i]);
      maxvstroke = list[i].length;
    }
  }
  print(min);
  print(max);
}