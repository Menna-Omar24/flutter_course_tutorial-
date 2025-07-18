void main() {
  //  [123456789] => output = max 9;
  // [1,2,5,0,-10,100] => output = max 100;
  print("Max num: ");
  List<int> numbers = [10, 25, 7, 90, 45];
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  print(max);

  // best way
  List<int> L = [10, 25, 7, 90, 45];
  int maxL = L.first;
  for (int i = 1; i < L.length; i++) {
    if (maxL < L[i]) {
      maxL = L[i];
    }
  }
  print('+++$maxL');
}
