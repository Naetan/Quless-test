import "dart:io";
void main(){
  
  print("What Do You Want To Calculate For?");
  print("1. Force");
  print("2. Mass");
  print("3. Acceleration");
  
  int? select = int.parse(stdin.readLineSync()!);
  
  
  
if (select == 1){
  print("Input the values for Mass and Acceleration");
  stdout.write("mass: ");
  double? mass = double.parse(stdin.readLineSync()!);
  stdout.write("acceleration: ");
  double? acceleration = double.parse(stdin.readLineSync()!);
  print("Force: ${mass * acceleration}");
}
  else if(select == 2){
     print("Input the values for Force and Acceleration");
  stdout.write("Force: ");
  double? force = double.parse(stdin.readLineSync()!);
  stdout.write("Acceleration: ");
  double? acceleration = double.parse(stdin.readLineSync()!);
 print("mass: ${force / acceleration}");
  }
   else if(select == 3){
     print("Input the values for Force and Mass");
  stdout.write("Force:");
  double? force = double.parse(stdin.readLineSync()!);
  stdout.write("Mass:");
  double? mass = double.parse(stdin.readLineSync()!);
 print("Acceleration: ${force ~/ mass}");
  }else{
    print('Input a valid option');
    return;
    
  }
}