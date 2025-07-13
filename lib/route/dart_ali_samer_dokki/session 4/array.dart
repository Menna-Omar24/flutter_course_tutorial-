// array is data structure
import 'dart:io';

main(){
  //  0 1 2 3 4  5 6  7  8 9 10                           index
  // [2,0,9,5,44,5,11,66,7,6,0]  values
  // size = 11
  // lastindex = size-1

  List<int> numbers = [];
  print("How many number you enter?");
  int count = int.parse(stdin.readLineSync()!);
  for(int i=0;i<count;i++){
    print("Enter a number");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int sum = summation(numbers);
  print("Summation : $sum");
}

int summation(List<int> numbersList){
  // range error
  int sum = 0;
  for(int i=0;i<numbersList.length;i++){
    sum = sum + numbersList[i];
  }
  return sum;
}