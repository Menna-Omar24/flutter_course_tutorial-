void main() {
  Map m = {
    1: 'menna',
    'names': 'omar',
    'age': 25,
    'isStudent': true,
  };

  Map<int, String> names = {
    1: 'menna',
    2: 'omar',
    3: 'hassan',
  };
  names.addAll({
    4: 'mohamed',
    5: 'ibrahim',
  });
  print(names);
  print(names[0]); //null
  print(names[1]);
  print(names.remove(5));
  print(names.remove(6));

  print(names.containsKey(1));
  print(names.containsValue('menna'));

  print(names.keys);
  print(names.values);

  Map<String, List> user = {
    'menna': [1, 2, 3],
    'omar': [4, 5, 6],
  };
  // user['name']!.add(50);
  //
  // if (user['menna'] != null) {
  //   user['name']!.add(50);
  // }




  // Repeat
  print("================================");

// average grade result map
  print('average grade result map: \n');
  Map<String, List<int>> grades = {
    'Menna': [90, 85, 92],
    'omar': [80, 70, 50],
    'hassan': [42, 49, 32],
  };
  // result of map & average
  grades.forEach((String name, List<int> grades) {
    int sum = 0;

    for (int grade in grades) {
      sum += grade;
    }
    int average = sum ~/ grades.length;

    print(
        '$name:{\n average:$average \n result:${average >= 60 ? 'pass' : 'fail'}\n}\n');
  });


}
