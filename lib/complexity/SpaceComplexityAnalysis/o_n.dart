void linearSpaceExample(int n) {
  List<int> numbers = [];  // قائمة فارغة
  for (int i = 0; i < n; i++) {
    numbers.add(i);  // إضافة عناصر إلى القائمة
  }
  print(numbers);   // طباعة القائمة
}

void main() {
  linearSpaceExample(5); // تشغيل الدالة مع n = 5
}
