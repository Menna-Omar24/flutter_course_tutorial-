import 'dart:io';

void main() {
  List<int> scores = [];

  print('Enter the scores');

  while (true) {
    int score = int.parse(stdin.readLineSync()!);

    if (score < 0) {
      break;
    }

    scores.add(score);
  }

  if (scores.isEmpty) {
    print('No scores entered.');
    return;
  }

  double average = scores.reduce((a, b) => a + b) / scores.length;

  int aboveOrEqual = 0;
  int below = 0;
  int equal = 0;

  for (int score in scores) {
    if (score > average) {
      aboveOrEqual++;
    } else if (score < average) {
      below++;
    } else {
      equal++;
    }
  }

  print('Above average: $aboveOrEqual');
  print('Below average: $below');
  print('Equal average: $equal');
}
