import 'dart:io';

void main() {

  // menu 1
  List<String> option1 = ['1','2','3'];
  List<String> one = ['Small(N500)','Medium(N650)','Large(N1000)'];
  int firstmenu1 = 500;
  int firstmenu2 = 650;
  int firstmenu3 = 1000;
  int total1 = 0;

   // menu 2
 List<String> option2 = ['1','2','3','4','5','6','7'];
  List<String> two = ['veggie(N300)','pepperoni(N350)','meat pizza(N330)','margherita(N300)','BBQ Chicken Pizza(N370)',
                     'Hawaiian Pizza(N400)','Bufallo Pizza(N350)' ];
  int secondmenu1 = 300;
  int secondmenu2 = 350;
  int secondmenu3 = 330;
  int secondmenu4 = 300;
  int secondmenu5 = 370;
  int secondmenu6 = 400;
  int secondmenu7 = 350;
  int total2 = 0;

// menu 3
List<String> option3 = ['1','2','3','4','5','6','7','8'];
  List<String> three = ['mushroom(N100)','onions(N100)','green pepper(N100)','extra cheese(N100)','pepperoni(N100)',
                     'sausage(N100)','pineapple(N100)','ham(100)' ];
  int thirdmenu1 = 100;
  int thirdmenu2 = 100;
  int thirdmenu3 = 100;
  int thirdmenu4 = 100;
  int thirdmenu5 = 100;
  int thirdmenu6 = 100;
  int thirdmenu7 = 100;
  int thirdmenu8 = 100;
  int total3 = 0;
  

//create multiple userchoices to accept multiple user options
 String userchoice;
 String userchoice2;
 String? userchoice3;



//for size
 do{ 
    print('what size of Pizza do you want?');
    for(int i = 0; i < one.length; i++){
      print('${i + 1}. ${one[i]}');
      
      }
      stdout.write('>>>: ');
      userchoice = stdin.readLineSync()!;
    if(!option1.contains(userchoice)){
      print('invalid choice');
    }  
  
  }while(!option1.contains(userchoice));


  // for the total of menu1
 if(userchoice == '1'){
    total1 = firstmenu1;
    
  }else if(userchoice == '2'){
    total1 = firstmenu2;
    
  }else{
    total1 = firstmenu3;
    
  }

  //to assign userchoice to the pick
  if(userchoice == '1'){
    userchoice = one[0];
    
  }else if(userchoice == '2'){
    userchoice = one[1];
    
  }else if(userchoice == '3'){
    userchoice = one[2];
    
  }


  //for Type
 do{ 
    print('\nwhat Type do you want?');
    for(int i = 0; i < two.length; i++){
      print('${i + 1}. ${two[i]}');
      
      }
      stdout.write('>>>: ');
      userchoice2 = stdin.readLineSync()!;
      if(!option2.contains(userchoice2)){
      print('invalid choice');
    }  
      
  
  }while(!option2.contains(userchoice2));

 // for the total of menu2
 if(userchoice2 == '1'){
    total2 = secondmenu1;
    
  }else if(userchoice2 == '2'){
    total2 = secondmenu2;
    
  }else if(userchoice2 == '3'){
    total2 = secondmenu3;
    
  }else if(userchoice2 == '4'){
    total2 = secondmenu4;
    
  }else if(userchoice2 == '5'){
    total2 = secondmenu5;
    
  }else if(userchoice2 == '6'){
    total2 = secondmenu6;
    
  }else{
    total2 = secondmenu7;
    
  }

  //to assign userchoice2 to the pick
  if(userchoice2 == '1'){
    userchoice2 = two[0];
    
  }else if(userchoice2 == '2'){
    userchoice2 = two[1];
    
  }else if(userchoice2 == '3'){
    userchoice2 = two[2];
    
  }else if(userchoice2 == '4'){
    userchoice2 = two[3];
    
  }else if(userchoice2 == '5'){
    userchoice2 = two[4];
    
  }else if(userchoice2 == '6'){
    userchoice2 = two[5];
    
  }else{
    userchoice2 = two[6];
    
  }

  
   
//for toppings
     stdout.write('\nDo you want toppings? (y/n)');
     print('>>>: ');
      userchoice3 = stdin.readLineSync()!;
    if(userchoice3 == 'y'){
     do{ 
      print('\nwhat toppings do you want');
    
    for(int i = 0; i < three.length; i++){
      print('${i + 1}. ${three[i]}');
      
      }
      stdout.write('>>>: ');
      userchoice3 = stdin.readLineSync()!;

           // for the total of menu3
 if(userchoice3 == '1'){
    total3 = thirdmenu1;
    
  }else if(userchoice3 == '2'){
    total3 = thirdmenu2;
   
  }else if(userchoice3 == '3'){
    total3 = thirdmenu3;
    
  }else if(userchoice3 == '4'){
    total3 = thirdmenu4;
    
  }else if(userchoice3 == '5'){
    total3 = thirdmenu5;
    
  }else if(userchoice3 == '6'){
    total3 = thirdmenu6;
    
  }else if(userchoice3 == '7'){
    total3 = thirdmenu7;
    
  }else{
    total3 = thirdmenu8;
    
  }

 
  }while(!option3.contains(userchoice3));

   //to assign userchoice3 to the pick
  if(userchoice3 == '1'){
    userchoice3 = three[0];
    
  }else if(userchoice3 == '2'){
    userchoice3 = three[1];
    
  }else if(userchoice3 == '3'){
    userchoice3 = three[2];
    
  }else if(userchoice3 == '4'){
    userchoice3 = three[3];
    
  }else if(userchoice3 == '5'){
    userchoice3 = three[4];
    
  }else if(userchoice3 == '6'){
    userchoice3 = three[5];
    
  }else if(userchoice3 == '7'){
    userchoice3 = three[6];
    
  }else if(userchoice3 == '8'){
    userchoice3 = three[7];
    
  }
  

      
      }else if(userchoice3 == 'n'){
      userchoice3 = '-----';
      }
      else{
        userchoice3 = '-----';
        print ('We consider anything not "y" as No Toppings. If you want toppings please restart the program and input "y"');
      }
 

  stdout.write('\ninput you name: ');
  stdout.write('>>>: ');
  String name = stdin.readLineSync()!;
  
  stdout.write('input you number: ');
  stdout.write('>>>: ');
  String phone = stdin.readLineSync()!;

  stdout.write('input you address: ');
  stdout.write('>>>: ');
  String address = stdin.readLineSync()!;



  print('\nHERE IS YOUR RECIEPT DETAILS');
  print('PICKED PIZZA: $userchoice2 ');
  print('PIZZA SIZE: $userchoice ');
  print('TOPPINGS: $userchoice3');
  print('TOTAL COST OF YOUR ORDER: N${total1 + total2 + total3}');


  print('Thank you for placing your order $name. Your order will be delivered to $address in 15 minuites time.');
  


  //calculate the total by creating diff int variables seperately for each option
  
  
}
