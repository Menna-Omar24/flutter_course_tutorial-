// abstract class ---> مجردة
abstract class Employee {
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

  // abstract function ---> ملهاش body
  double calculateSalary();
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

// Hide for children Details ---> لو حذفت اي حاجة من ---> child مش هياثر
printAllEmployeeSalary(List<Employee> emps) {
  for (Employee i in emps) {
    print('Name : ${i.name} --> Salary : ${i.calculateSalary()}');
    i.printDetails(); // isCertifiedExcel , frameWork , id , name , salary
    print('');
  }
}

void main() {
  //  runtime polymorphism                                    +
  //  compile time polymorphism ---> method overloading ---> operator overloading
  // abstract classes can't be instantiated ---> مينفعش اخد منه object
  // Employee e =Employee(); abstract ملهاش معني
  Employee dev = Developer(1012, 'MENNA', 2000, 'FLUTTER');
  dev.name;
  Employee acc = Accountant(122, 'ali', 5000, true);
  acc.name;
  List<Employee> emp = [
    Developer(101, 'menna', 40000, 'flutter'),
    Developer(102, 'OMAR', 46000, 'django'),
    Developer(103, 'HASSAN', 30000, 'android'),
    Developer(104, 'mohamed', 20000, 'ios'),
    Developer(105, 'ibrahim', 45000, 'web'),
    Accountant(1110, 'amal', 1200, false),
    Accountant(1111, 'ahmed', 3000, true),
    Accountant(1112, 'ali', 600, false),
    Accountant(1113, 'ashraf', 4000, true),
  ];
  printAllEmployeeSalary(emp);
}
