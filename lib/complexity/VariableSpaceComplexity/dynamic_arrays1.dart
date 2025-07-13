void dynamicArrayExample(int n) {
  List<int> numbers = []; // Create an empty list

  for (int i = 0; i < n; i++) {
    numbers.add(i); // Add elements to the list
  }

  print(numbers); // Print the list
}

void main() {
  dynamicArrayExample(10); // Example usage of the function
}
