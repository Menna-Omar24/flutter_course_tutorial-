
import 'dart:io';

void main(){
  print("Enter a number");
  int number  = int.parse(stdin.readLineSync()!);
  int sum = 0;
  while(number>0){
    int digit = number % 10;
    sum+=digit;
    number  = number ~/ 10;
  }
  print(sum);
}