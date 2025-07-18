void main() {
//   reverse [1,2,3,4,5]
  List<int> number = [1, 2, 3, 4, 5];
  List<int> reversedNumbers = [];
  for (int i = number.length - 1; i >= 0; i--) {
    reversedNumbers.add(number[i]);
  }
  print(reversedNumbers);

  print("Reverse List: ");
  List<int> numbers1 = [1, 2, 3, 4, 5];
  for (int i = 0; i < numbers1.length ~/ 2; i++) {
    int temp = numbers1[i];
    numbers1[i] = numbers1[numbers1.length - 1 - i];
    numbers1[numbers1.length - 1 - i] = temp;
  }
  print(numbers1);

  // best way
  List<int> L = [1, 2, 3, 4];
  int start = 0;
  int end = L.length - 1;
  while (start < end) {
    int temp = L[start];
    L[start] = L[end];
    L[end] = temp;
    start++;
    end--;
  }
  print(L);
}
