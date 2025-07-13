import 'dart:io';

void main(){
  // 5! -> 5 * 4 * 3 * 2 * 1
  // 7! -> 7 * 6 * 5 * 4 * 3 * 2 * 1

  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for(int i = number;i>=1;i--){
    factorial = factorial*i;
  }
  print("factorial $factorial");
}