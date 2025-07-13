// ask user enter grade of student
// take grade input
// 100 >> grade >> 90 -> A
// 89 >> grade >> 80 -> B
// 79 >> grade >> 70 -> C
// 69 >> grade >> 60 -> C-
// 59 >> grade >> 50 -> D
// 49 >> grade >> 0 -> F
// not between 100 and 0 -> invalid grade

import 'dart:io';

void main(){
  print("Enter the student grade");
  int grade = int.parse(stdin.readLineSync()!);

  if(grade >= 90 && grade<=100){
    print("A");
  }
  else if(grade >=80 && grade <=89){
    print("B");
  }
  else if(grade >=70 && grade <=79){
    print("C");
  }
  else if(grade >=60 && grade <=69){
    print("C-");
  }
  else if(grade >=50 && grade <=59){
    print("D");
  }else if(grade >=0 && grade <=49){
    print("F");
  }else{
    print("Invalid grade");
  }
}