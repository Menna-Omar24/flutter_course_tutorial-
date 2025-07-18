void main() {
  // list empty
  List names = [];
  names.add('menna');
  // list dynamic
  List names1 = ['menna', 'omar', 'hassan'];
  // list static datatype
  List<String> names2 = ['menna', 'omar', 'hassan'];
  // add last
  names2.add('Allah');
  // add index
  names2[0] = 'Menna Allah';
  print(names2[names2.length - 1] = 'omara');
  names2.addAll(['mohamed', 'ibrahim']);
  print(names2.removeAt(0));
  print(names2.remove('ibrahim')); //true or false
  bool isRemoved = names2.remove('ibrahim');
  print(isRemoved);
  int index = names2.indexOf('menna');
  names2.insert(0, 'menna');
  // names2.insert(10, 'menna'); //error
  names2.insert(names2.length, 'menna');
  // print(names2.contains('menna'));
  // print(names2.indexOf('menna'));
  print(names2);

//  [123456789] =>output = max 9;
//   [1,2,5,0,-10,100] =>output = max 100;
  print("Max num: ");
  List<int> numbers = [10, 25, 7, 90, 45];
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  print(max);

  List<int> L = [10, 25, 7, 90, 45];
  int maxL = L.first;
  for (int i = 1; i < L.length; i++) {
    if (maxL < L[i]) {
      maxL = L[i];
    }
  }
  print('+++$maxL');
/* [1,0,2,3]
output:[3,2,0,1] reverse
*/
  print("Reverse List: ");
  List<int> numbers1 = [1, 2, 3, 4,5];
  for (int i = 0; i < numbers1.length ~/ 2; i++) {
    int temp = numbers1[i];
    numbers1[i] = numbers1[numbers1.length - 1 - i];
    numbers1[numbers1.length - 1 - i] = temp;
  }
  print(numbers1);
}
