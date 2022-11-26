import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String b) {
  List<int> a = []; 
  String c = ""; 
  bool m = true; 

  for (int i = 0; i < b.length; i++) {
    while (b[i] != " " && m) {
      c += b[i];
      if (i < b.length - 1) {
        i++;
      } else {
        m = false;
      }
    }
    a.add(int.parse(c)); 
    c = ""; 
  }
  return (a);
}

void main() async {
  final file = File('file.txt');

  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) 
      .transform(LineSplitter());
  List<String> z = []; 
  await for (var line in lines) {
    z.add(line); 
  }
  var list = transforming(z[0]);
  int index1 = 0;
  int index2 = 0;
  int obiem = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      int visota = list[i] < list[j] ? list[i] : list[j];
      int lenght = j - i;
      if (obiem < visota * lenght) {
       obiem = visota * lenght;
      }
    }
  }
  print(obiem);
}