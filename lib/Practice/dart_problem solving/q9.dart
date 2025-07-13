// Create a function named getCurrentYear that takes no parameters and returns the current year as an int. Assume the year is 2024 for this example.
void main() {
  print('The current year is: ${getCurrentYear()}');
}

int getCurrentYear() {
  return DateTime.now().year;
}
