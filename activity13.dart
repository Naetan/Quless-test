import "dart:math";
import "dart:io";

void main(){

  
  int selectedNum;
   
  do{
    stdout.write("Guess a Number from 1-10: ");
   selectedNum = int.parse(stdin.readLineSync()!);

   int currentnum = Random().nextInt(10);
   print(currentnum);
     if(selectedNum == currentnum){

    print("Your Guess is Correct");


  }else if (selectedNum > currentnum && selectedNum <= 10){
    print('Your guess is too high.');
  }
  else if(selectedNum < currentnum ){
    
    print("Your guess is too low.");

  }

  else {
    print ('invalid choice');
  }

  }while(selectedNum > 10);

  



}

