void main() {
  String grade = 'a';
  switch (grade) {
    case 'a':
      print('your grade is excellent');
      break;
    case 'b':
      print('your grade is good');
      break;
    case 'c':
      print('your grade is fair');
      break;
    case 'd':
      print('your grade is poor');
      break;
    case 'f':
      print('your grade is fail');
      break;
    default:
      print('invalid grade!');
  }
}
