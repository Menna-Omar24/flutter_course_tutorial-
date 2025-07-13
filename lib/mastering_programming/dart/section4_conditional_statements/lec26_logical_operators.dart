void main() {
  int mathScore = 70;
  int englishScore = 65;
  int arabicScore = 40;
  // لازم الشرطين يتحققوا
  bool hasHePassed =mathScore >= 50 && englishScore >= 50 && arabicScore >= 50;
  if (hasHePassed) {
    print('congratulations you passed');
  }
}
