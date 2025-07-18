// 🚗 Speeding Fine Calculations - Dart Reference File

void main() {
  // ✨ Example 1:
  int speedLimit = 100;
  int actualSpeed = 120;
  bool hasLicence = false;

  int fine = 0;
  int speedDifference = actualSpeed - speedLimit;

  if (speedDifference <= 0) {
    fine = 0;
  } else if (speedDifference <= 20) {
    fine = 500;
  } else {
    fine = 1000;
  }

  if (!hasLicence) {
    fine += 500;
  }
  print("Fine 1: $fine");

  // ✨ Example 2 (Same logic with different variables):
  int speedLimit1 = 100;
  int actualSpeed1 = 120;
  bool hasLicence1 = false;

  int fine1 = 0;
  int speedDifference1 = actualSpeed1 - speedLimit1;

  if (speedDifference1 > 0) {
    if (speedDifference1 <= 20) {
      fine1 = 500;
    } else {
      fine1 = 1000;
    }
  }

  if (!hasLicence1) {
    fine1 += 500;
  }
  print("Fine 2: $fine1");

  // ✨ Example 3 (Same logic, typo fixed in license check):
  int speedLimit2 = 100;
  int actualSpeed2 = 120;
  bool hasLicence2 = false;

  int fine2 = 0;
  int speedDifference2 = actualSpeed2 - speedLimit2;

  if (speedDifference2 > 0) {
    if (speedDifference2 <= 20) {
      fine2 = 500;
    } else {
      fine2 = 1000;
    }
  }

  if (!hasLicence2) {
    fine2 += 500;
  }
  print("Fine 3: $fine2");
}
