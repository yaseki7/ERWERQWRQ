import 'dart:io';
import 'dart:math';
Map<String,dynamic> vicislenie(Map<String,dynamic> temperature) {
for(String key in temperature.keys){
  double a = 0;
  for (int i=0; i<30;i++){
    a +=temperature[key][i];
  }
temperature[key] = a ~/30;
}
  return (temperature);
}
void main() { 
Map <String,dynamic> temperature = {
'Jan': List.generate(30, (i) => -35 + Random().nextInt(-20 - -35)),
'Feb': List.generate(30, (i) => -30 + Random().nextInt(-15 - -30)),
'Mart': List.generate(30, (i) => -20 + Random().nextInt(-10 - -20)),
'Apr': List.generate(30, (i) => -10 + Random().nextInt(5 - -10)),
'May': List.generate(30, (i) => 10 + Random().nextInt(10 - 10)),
'Jun': List.generate(30, (i) => 30 + Random().nextInt(20 - 30)),
'Jul': List.generate(30, (i) => 35 + Random().nextInt(20 - 35)),
'Avg': List.generate(30, (i) => 30 + Random().nextInt(20 - 30)),
'Sen': List.generate(30, (i) => 20 + Random().nextInt(10 - 20)),
'Oct': List.generate(30, (i) => 0 + Random().nextInt(10 - 0)),
'Nov': List.generate(30, (i) => -35 + Random().nextInt(-20 - -35)),
'Dec': List.generate(30, (i) => -30 + Random().nextInt(-10 - -30)),

};
print(vicislenie(temperature));
}