import 'dart:io';


class person{
  final String name;
  person(this.name);
}
void main(){
  stdout.write("what is your name?: ");
  final foo = person(stdin.readLineSync()!);
  stdout.write("what do you like?: ");
  String like = (stdin.readLineSync()!);

  print(' So ${foo.name} you like $like ??');
}

