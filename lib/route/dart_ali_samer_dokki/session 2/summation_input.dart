import 'dart:io';

void main(){
  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  while(number>=0){
    sum = sum + number;
    print("Enter a number");
    number = int.parse(stdin.readLineSync()!);
  }
  print(sum);
}