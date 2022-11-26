import 'dart:io';
import 'dart:math';
void main(){
List<int> nums = [];
bool proiz = true;
while(proiz){
String element = stdin.readLineSync()!;
if(element != ""){
try{if(int.parse(element)>=0){
nums.add(int.parse(element));
} else{proiz = false;}}
catch(e){
print('Error: $e');
}
}
else{
proiz = false;
}
}
int summa = 0;
try{
int a = int.parse(stdin.readLineSync()!);
for(int i = 0; i<nums.length;i++){
if(nums[i]%a ==0){
summa += nums[i];
}
}
} catch(e){
print('Error: $e');
}
print(summa);
}