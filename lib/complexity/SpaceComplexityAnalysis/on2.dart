void quadraticSpaceExample(int n) {
  List<List<int>> matrix = List.generate(n, (i) => List.generate(n, (j) => i * j));
  print(matrix);   // طباعة المصفوفة
}

void main() {
  quadraticSpaceExample(3); // تشغيل الدالة مع n = 3
}
// [
// [0, 0, 0],  // الصف الأول: 0 * 0, 0 * 1, 0 * 2
// [0, 1, 2],  // الصف الثاني: 1 * 0, 1 * 1, 1 * 2
// [0, 2, 4]   // الصف الثالث: 2 * 0, 2 * 1, 2 * 2
// ]
