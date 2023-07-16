import 'dart:io';


void userprofile(String name, int dateofbirth, double salary,String gender, String occupation){
  int? dob;


  if(dateofbirth <= 2023){
  dob = 2023 - dateofbirth;
  }


if(gender == 'male'){
  print("His name is $name and he is $dob. He is a $occupation that earns $salary naira weekly. ");

}else if(gender == 'female'){
  print("Her name is $name and she is $dob. She is a $occupation that earns $salary naira weekly. ");
}else{
  print('invalid gender, Sorry you can only be male or female' );
  
}
}



void main(){
  stdout.write('What is your name?: ');
  String name = stdin.readLineSync()!;
  int dateofbirth;

  do{
    stdout.write('Date of Birth: ');
  dateofbirth = int.parse(stdin.readLineSync()!);

  if(dateofbirth > 2023){
    print('You can only input 2023');
  }
  }while(dateofbirth > 2023);

   stdout.write('salary: ');
  double salary = double.parse(stdin.readLineSync()!);

  stdout.write('What is your gender?: ');
  String gender = stdin.readLineSync()!;

  stdout.write('What is your Occupation: ');
  String occupation = stdin.readLineSync()!;

  userprofile(name,dateofbirth,salary,gender, occupation);



}