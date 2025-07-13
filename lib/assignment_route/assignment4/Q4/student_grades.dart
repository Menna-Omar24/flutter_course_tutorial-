import 'dart:io';

void main() {
  print('Enter the number of students:');
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  if (numberOfStudents <= 0) {
    print('The number of students must be greater than zero.');
    return;
  }

  List<int> scores = [];
  print('Enter $numberOfStudents scores:');
  for (int i = 0; i < numberOfStudents; i++) {
    int score = int.parse(stdin.readLineSync() ?? '0');
    scores.add(score);
  }

  int bestScore = scores.reduce((a, b) => a > b ? a : b);

  for (int i = 0; i < scores.length; i++) {
    String grade;
    int score = scores[i];

    if (score >= bestScore - 10) {
      grade = 'A';
    } else if (score >= bestScore - 20) {
      grade = 'B';
    } else if (score >= bestScore - 30) {
      grade = 'C';
    } else if (score >= bestScore - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print('Student ${i + 1} score is $score and grade is $grade');
  }
}
