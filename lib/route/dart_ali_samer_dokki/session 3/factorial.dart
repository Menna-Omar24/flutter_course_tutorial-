import 'dart:io';

void main(){
  int number = int.parse(stdin.readLineSync()!);
  int fact = factorial(number);
  print(fact);
}

int factorial(int number){
  // 5 : 5 * 4 * 3 * 2 * 1
  int factorial = 1;
  for(int i=1;i<=number;i++){
    factorial = factorial*i;
  }
  return factorial;
}
