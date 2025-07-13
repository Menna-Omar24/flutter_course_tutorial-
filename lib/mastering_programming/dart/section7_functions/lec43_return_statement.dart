void main() {
  sumToNumber();
  int result = sumToNumber();
  int num3 = result + 5;
  print(num3);
}

// function --> بتاخد رقمين وتجمعهم وبعد كدا بتعمل باخد الناتج
// void sumToNumber() {
//   int num1 = 15;
//   int num2 = 40;
//   int result = num1 + num2;
//   print(result);
// }

// لو عايزة اخد قيمة result واستخدامه عشان اجمعها على num3
// ناتج العميلة ---> تحديد datatype
// بروح على void بحذفها وبكتب مكانها نوع datatype
// return
int sumToNumber() {
  int num1 = 15;
  int num2 = 40;
  int result = num1 + num2;
  return result;
}
