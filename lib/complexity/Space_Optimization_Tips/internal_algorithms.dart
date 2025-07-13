void modifyList(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = numbers[i] * 4;  // تعديل القيم الأصلية
  }
}

void main() {
  List<int> myNumbers = [2, 3, 6, 5];
  modifyList(myNumbers); // تعديل القائمة الأصلية
  print(myNumbers); // الناتج: [2, 4, 6, 8]
}
