// Print the names of students who are older than 18 from a list of student names and ages
void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Menna', 'age': 21},
    {'name': 'Omar', 'age': 20},
    {'name': 'Hassan', 'age': 19},
    {'name': 'Mohamed', 'age': 18},
    {'name': 'Ibrahim', 'age': 17},
    {'name': 'Amara', 'age': 22},
  ];

  print('Students older than 18: ');

  for (var student in students) {
    if (student['age'] > 18) {
      print(student['name']);
    }
  }
}
