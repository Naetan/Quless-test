import 'dart:io';
void exam(int num){
  if (num > 69 && num <= 100){

    print('You scored an A');

  }else if (num > 59 && num < 70){

    print('You scored a B');

  }else if(num >= 50 && num < 60){

    print('You scored a C');

  }else if ( num > 44 && num < 50){

    print('You scored a D');

  }else if( num < 0 || num > 100){

    print ('invalid score');
  }
  else{

    print('You scored an F');
  }

}

void main(){
  int num;

  // to repeat if choice is invalid
  do{
 stdout.write('whats the total you scored?: ');
 num = int.parse(stdin.readLineSync()!);

 exam(num);

  }while(num > 100 || num < 0);


}