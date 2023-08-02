import 'dart:io';
void degree(double cgpa){
   
   if(cgpa > 4.49 && cgpa < 5.00){
    print('1st class');
   }else if( cgpa > 3.49 && cgpa < 4.49 ){
    print('2nd class upper');
   }else if( cgpa > 2.39 && cgpa < 3.49 ){
    print('2nd class lower');
   }else if( cgpa > 1.49 && cgpa < 2.39 ){
    print('3rd class');
   }else if( cgpa > 0.99 && cgpa < 1.49 ){
    print('Pass');
   }else{
    print('Fail');
   }

}

void main(){
  double cgpa; 
  
 stdout.write('whats the total you scored?: ');
 cgpa = double.parse(stdin.readLineSync()!);

 degree(cgpa);




}