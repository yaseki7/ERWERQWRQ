import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main() async {
final file = File('numsTask2.txt');
String nums = ""; 
Stream<String> lines = file
.openRead()
.transform(utf8.decoder)
.transform(LineSplitter());
try {
await for (var line in lines) {
nums += line;
nums +=" ";
}
} catch (e) {
print('Error: $e');
}
print(nums);
}