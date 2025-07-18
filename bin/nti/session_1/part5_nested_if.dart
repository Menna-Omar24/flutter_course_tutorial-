void main() {
  // First Case
  bool isMan = true;
  bool hasLicence = true;

  if (isMan) {
    print('isMan');          // This will be printed because isMan is true
    if (hasLicence) {
      print('hasLicence');   // This will be printed because hasLicence is true
    }
  } else {
    print('girl');           // Will not execute in this case
  }

  // Second Case
  bool isMan1 = true;
  bool hasLicence1 = false;

  if (isMan1) {
    print('isMan');          // This will be printed because isMan1 is true
    if (hasLicence1) {
      print('hasLicence');   // Will NOT be printed because hasLicence1 is false
    }
  } else {
    print('girl');           // Will not execute in this case
  }
}
