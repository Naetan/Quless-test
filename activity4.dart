import 'dart:io';
void main(){
  stdout.write('Input a number:');
  double? num = double.parse(stdin.readLineSync()!);

  num % 2 == 0 ? print('$num is even') : print ('$num is odd');
  

}