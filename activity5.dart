import 'dart:io';
void main(){
  stdout.write('Input a number:');
  int? num = int.parse(stdin.readLineSync()!);

  if (num > 0 ){
    print('$num is positive');
  }else if(num < 0){
    print('$num is negative');
  }
  else{
    print ('The number is $num and it cant have negative values');
  }
}