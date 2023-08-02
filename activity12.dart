import 'dart:io';
void greet(String name){
  print('hello $name welcome to deebug.');

}

void main(){
  stdout.write('What is your name?: ');
  String name = stdin.readLineSync()!;
  greet(name);
}