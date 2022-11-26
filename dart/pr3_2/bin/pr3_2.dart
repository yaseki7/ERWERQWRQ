import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
List<int> transforming(String c) {
  List<int> a = []; 
  String b = "";
  bool m = true;

  for (int i = 0; i < c.length; i++) {
    while (c[i] != " " && m) {
      b += c[i];
      if (i < c.length - 1) {
        i++; 
      } else {
        m = false;
      }
    }
    a.add(int.parse(b)); 
    b = "";
  }
  return (a);
}

void main() async {
  final file = File('nums.txt');
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) 
      .transform(LineSplitter()); 
  List<String> list = []; 
  await for (var line in lines) {
    list.add(line);
  }
  String c = '';
  List<int> a = transforming(list[0]);
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      a.remove(a[i]);
    }
  }
  for (int i = 0; i < a.length; i++) {
    c = c + a[i].toString() + " ";
  }
  var glist = file.openWrite();
  glist.write(c);
  glist.close();
}