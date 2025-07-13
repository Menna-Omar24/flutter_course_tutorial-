class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return 'Name: $name (Address: $address)';
  }
}

class Student extends Person {
  int numCourses;
  List<String> courses;
  List<int> grades;

  Student(super.name, super.address)
      : numCourses = 0,
        courses = [],
        grades = [];

  @override
  String toString() {
    return 'Student: $name($address)';
  }

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses = courses.length;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}:${grades[i]}');
    }
  }

  double getAverageGrades() {
    if (grades.isEmpty) return 0.0;
    int sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

class Teacher extends Person {
  int numCourses;
  List<String> courses;

  Teacher(super.name, super.address)
      : numCourses = 0,
        courses = [];

  @override
  String toString() {
    return 'Teacher: $name($address)';
  }

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    } else {
      courses.add(course);
      numCourses = courses.length;
      return true;
    }
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      numCourses = courses.length;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Person person = Person('menna', 'Cairo');
  print(person.toString());
  print('');
  Student student = Student('omar', 'dokki');
  student.addCourseGrade('Math', 95);
  student.addCourseGrade('Science', 85);
  print(student.toString());
  student.printGrades();
  print('Average Grade: ${student.getAverageGrades()}');
  print('');

  Teacher teacher = Teacher('Dr. ali ', 'maadi');
  print(teacher.toString());
  print(teacher.addCourse('English'));
  print(teacher.addCourse('English'));
  print(teacher.removeCourse('English'));
  print(teacher.removeCourse('English'));
}
