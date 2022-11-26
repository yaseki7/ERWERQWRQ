import 'dart:io';
import 'dart:math';

void main() {
  List<double> a = [0.1,0.2,0.3,1.1,-1.5,3.1,-2.1];
  List<double> b = [];
  List<double> c = [];
  for (int i = 0; i < a.length; i++) {
    if (a[i] >= 0) {
      b.add(a[i]);
    } else {
      c.add(a[i]);
    }
  }
  print(b);
  print(c);
}
