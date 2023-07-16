class Exchange{
String flower = 'rose';
String tree = 'apple';

void exchange(){

  print(flower);
  print(tree);
}
}


void main(){

  Exchange exchange = new Exchange();

exchange.flower = 'apple';
exchange.tree = 'rose';
exchange.exchange();

}