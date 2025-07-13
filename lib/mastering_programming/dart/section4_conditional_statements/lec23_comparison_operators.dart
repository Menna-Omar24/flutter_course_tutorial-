void main() {
//   عمليات المقارنة--->  => , =< , == , < , >
  int mathScore = 70;
  int arabicScore = 50;
  // higher
  bool isMathScoreHigherThanArabic = mathScore > arabicScore;
  bool isMathScoreHigherEqualThanArabic =  mathScore >= arabicScore;
  bool isMathScoreEqualEqualThanArabic =  mathScore == arabicScore;
  bool isMathScoreNotEqualThanArabic =  mathScore != arabicScore;
  // smaller
  bool isArabicScoreSmallerThanMath = arabicScore < mathScore;
  bool isArabicScoreSmallerEqualThanMath = arabicScore <= mathScore;
  bool isArabicScoreEqualEqualThanMath = arabicScore == mathScore;
  bool isArabicScoreNotEqualThanMath = arabicScore != mathScore;
  // higher
  print('higher');
  print(isMathScoreHigherThanArabic);
  print(isMathScoreHigherEqualThanArabic);
  print(isMathScoreEqualEqualThanArabic);
  print(isMathScoreNotEqualThanArabic);
  // smaller
  print('smaller');
  print(isArabicScoreSmallerThanMath);
  print(isArabicScoreSmallerEqualThanMath);
  print(isArabicScoreEqualEqualThanMath);
  print(isArabicScoreNotEqualThanMath);
}
