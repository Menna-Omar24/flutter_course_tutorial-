// calculator
// take 2 numbers from user
// show menu
// 1- addition
// 2 - subtraction
// 3 - multiply
// 4 - division
// take number of operation
// check operation and get result

import 'dart:io';

void main(){
  print("Enter two numbers");
  int n1 = int.parse(stdin.readLineSync()!);
  print("");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Calculator menu: \n");
  print("1- addition");
  print("2- subtraction");
  print("3- Multiply");
  print("4- Division");
  print("Enter the number of operation");
  int operation = int.parse(stdin.readLineSync()!);
  if(operation == 1){
    print("Result is : ${n1+n2}");
  }else if(operation == 2){
    print("Result is : ${n1-n2}");
  }else if(operation == 3){
    print("Result is : ${n1*n2}");
  }else if(operation ==4){
    if(n2==0){
      print("You can't divide by zero");
    }else{
      print("Result is : ${n1~/n2}");
    }
  }else{
    print("Invalid operation");
  }
}