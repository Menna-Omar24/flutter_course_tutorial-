// Create a function named getCurrentYear that takes no parameters and returns the current year as an int. Assume the year is 2024 for this example.
void main() {
  int year = getCurrentYear();
  print('The current year is: $year');
}

int getCurrentYear() {
  return DateTime.now().year;
}
