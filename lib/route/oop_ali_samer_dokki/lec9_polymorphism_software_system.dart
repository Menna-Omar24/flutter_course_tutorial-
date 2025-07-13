class Employee {
  int id;
  String name;
  double salary;

  Employee(
    this.id,
    this.name,
    this.salary,
  );

  void printDetails() {
    print('id: $id');
    print('name: $name');
    print('salary: $salary');
  }

  double calculateSalary() {
    return 0;
  }
}

class Developer extends Employee {
  String frameWork;

  Developer(super.id, super.name, super.salary, this.frameWork);

  @override
  void printDetails() {
    super.printDetails();
    print('frameWork: $frameWork');
  }

  @override
  double calculateSalary() {
    return salary + (salary * 0.25);
  }
}

class Accountant extends Employee {
  bool isCertifiedExcel;

  Accountant(super.id, super.name, super.salary, this.isCertifiedExcel);

  @override
  void printDetails() {
    super.printDetails();
    print('isCertifiedExcel: $isCertifiedExcel');
  }

  @override
  double calculateSalary() {
    return salary + (salary * 0.1);
  }
}

printAllEmployeeSalary(List<Developer> devs, List<Accountant> accs) {
  for (int i = 0; i < devs.length; i++) {
    print('Name : ${devs[i].name}--> Salary : ${devs[i].calculateSalary()}');
  }
  for (Accountant i in accs) {
    print('Name : ${i.name}--> Salary : ${i.calculateSalary()}');
  }
}

void main() {
  // polymorphism ---> Employee (parent) ---> child(Accountant,Developer)
  // Accountant ac1 = Accountant(101, 'MOHAMED', 1000, false);
  // Developer dev1 = Developer(101, 'menna', 40000, 'flutter');

  List<Developer> devs = [
    Developer(101, 'menna', 40000, 'flutter'),
    Developer(102, 'OMAR', 46000, 'django'),
    Developer(103, 'HASSAN', 30000, 'android'),
    Developer(104, 'mohamed', 20000, 'ios'),
    Developer(105, 'ibrahim', 45000, 'web'),
  ];
  List<Accountant> accs = [
    Accountant(1110, 'amal', 1200, false),
    Accountant(1111, 'ahmed', 3000, true),
    Accountant(1112, 'ali', 600, false),
    Accountant(1113, 'ashraf', 4000, true),
  ];
  // dev1.printDetails();
  // print(dev1.calculateSalary());
  // print('----------');
  // ac1.printDetails();
  // print(ac1.calculateSalary());
  printAllEmployeeSalary(devs, accs);
}
