import 'dart:io';

void main(){
 
final time = DateTime.now();


stdout.write('Time: ');
stdout.write(time.hour);
stdout.write(':');
stdout.write(time.minute);


stdout.write('\nDate: ');
stdout.write(time.day);
stdout.write(':');
stdout.write(time.month);
stdout.write(':');
stdout.write(time.year);


}