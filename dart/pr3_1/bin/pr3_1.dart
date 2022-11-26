import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

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
  final file = File('input.txt');
  var output = File('output.txt');
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) 
      .transform(LineSplitter()); 
  List<String> a = []; 
  await for (var line in lines) {
    a.add(line);
  }
  List<int> winnumbers = transforming(a[0]); 
  List<int> numtickets = transforming(a[1]); 
  var sink = output.openWrite(); 
  for (int i = 0; i < numtickets[0]; i++) {
    List<int> ticket = transforming(a[i + 2]);
    int num = 0; 
    for (int n = 0; n < winnumbers.length; n++) {
      for (int m = 0; m < ticket.length; m++) {
        if (ticket[m] == winnumbers[n]) {
          num++;
        }
      }
    }
    if (num >= 3) {
      sink.write('Lucky\n');
    } else
      sink.write('Unlucky\n');
  }
  sink.close();
}
