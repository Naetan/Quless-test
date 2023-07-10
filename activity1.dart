import 'dart:io';
void main(){
  stdout.write('Input a number:');
  double? num = double.parse(stdin.readLineSync()!);

  if (num % 2 == 0){
    print('$num is even');
  }else if( num % 2 == 1){
    print('$num is odd');
  }else{
    print('Please Input A Number Without Decimals');
  }

}