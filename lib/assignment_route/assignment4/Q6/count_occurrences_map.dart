import 'dart:io';

void main() {
  // قائمة لتخزين عدد مرات تكرار كل رقم
  List<int> occurrences = List.filled(101, 0);

  // قراءة الأرقام من المستخدم
  print('Enter the integers between 1 and 100 (end with 0):');

  while (true) {
    int number = int.parse(stdin.readLineSync()!);

    // وقف الإدخال عند إدخال الرقم 0
    if (number == 0) {
      break;
    }

    // زيادة عدد مرات تكرار الرقم
    occurrences[number]++;
  }

  // عرض النتائج
  for (int i = 1; i <= 100; i++) {
    if (occurrences[i] > 0) {
      print('$i occurs ${occurrences[i]} time${occurrences[i] > 1 ? 's' : ''}');
    }
  }
}
// : 2 5 6 5 4 3 23 43 2 0

