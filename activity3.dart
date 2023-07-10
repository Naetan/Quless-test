import "dart:io";
void main(){

  stdout.write("INPUT THREE NUMBERS");
  stdout.write("\n>>>: ");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write(">>>: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  stdout.write(">>>: ");
  double? num3 = double.parse(stdin.readLineSync()!);


  if (num1 > num2 && num1 > num3) {
    print("$num1 is the biggest");
  } else if (num2 > num1 && num2 > num3) {
    print("$num2 is the biggest");
  } else if (num3 > num1 && num3 > num2) {
    print("$num3 is the biggest");
  } else if (num1 == num2 && num1 != num3) {
    print("Both $num1 and $num2 are the biggest");
  } else if (num1 == num3 && num1 != num2) {
    print("Both $num1 and $num3 are the biggest");
  } else if (num2 == num3 && num2 != num1) {
    print("Both $num2 and $num3 are the biggest");
  } else {
    print("All numbers are equal.");
  }
}
