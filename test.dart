import "dart:io";

void usercheck( {String? name, int? age,}){

  if(  age! >= 18){
  print ('hi $name you are old enough');
}
else{
  print('hi $name but you are not old enough');
}
}

void main(){
stdout.write('input your name: ');
String name = (stdin.readLineSync()!);
stdout.write('input your age: ');
int age = int.parse(stdin.readLineSync()!);
usercheck(name: name, age: age);
}

