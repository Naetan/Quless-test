import "dart:io";

void userprofile( String name, int age, int salary, String address){
  print ('so $name, \nYou are $age \nAnd you earn $salary \nWhy do you live at $address tho??');
}

void main(){
stdout.write('input your name: ');
String name = (stdin.readLineSync()!);
stdout.write('input your age: ');
int age = int.parse(stdin.readLineSync()!);
stdout.write('What do you earn: ');
int salary = int.parse(stdin.readLineSync()!);
stdout.write('where do you live: ');
String address = (stdin.readLineSync()!);


userprofile(name, age, salary, address );
}

