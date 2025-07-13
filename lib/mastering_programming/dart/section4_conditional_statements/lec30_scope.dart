void main() {
//   main function scope
//   scope ----> نطاق الرؤية
  int age = 25;
  // print(age);
  if (true) {
//   if scope
  int age = 15;
    print(age);
  }
  print(age);//error
}
