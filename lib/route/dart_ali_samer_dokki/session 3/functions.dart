import 'dart:io';

void main(){
  print("Enter number");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter number");
  int n2 = int.parse(stdin.readLineSync()!);
  int sum = summation(n1, n2);
  print(sum*100);
}

int summation(int n1 , int n2){

  int result = n1 + n2;
  return result ;
}
void printData(int n1 , int n2){
  int result = summation(n1, n2);
  print(result);
}