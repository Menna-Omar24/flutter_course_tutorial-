import 'dart:io';

void main(){
  // take 2 numbers from user
  // number : 2 * 2 * 2 * 2
  // power : 4

  print("Enter the number");
  int number = int.parse(stdin.readLineSync()!);
  print("Enter the power");
  int power = int.parse(stdin.readLineSync()!);
  int result = 1;
  for(int i=1 ;i<=power;i++){
    result = result*number;
  }
  print(result);
}