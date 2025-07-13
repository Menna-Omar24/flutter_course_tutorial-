// software system
// developer --> id , name , salary , framework ---> 25% plus salary
// accountants --> id , name , salary , certifiedExcel ---> 10% plus salary
// general case  employee ---> inheritance
// is a , some kind of
// Employee ---> Parent , super , base
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

// Developer , Accountant ---> child , subclass , derived class
class Developer extends Employee {
  String frameWork;
//   الطريقة القديمة
//   Developer(int id, String name, double salary, this.frameWork)
//       : super(id: 0, name: '', salary: 0.0) {
//     this.id = id;
//     this.name = name;
//     this.salary = salary;
//   }

//   Developer(
//       {required this.frameWork,
//       required super.id,
//       required super.name,
//       required super.salary});
//   الطريقة المختصرة
  Developer(super.id, super.name, super.salary, this.frameWork);
  //  override Annotation
  @override
  void printDetails() {
    // عشان انادى
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

void main() {
  Accountant ac1 = Accountant(101, 'MOHAMED', 1000, false);
  Developer dev1 = Developer(101, 'menna', 40000, 'flutter');
  dev1.printDetails();
  print(dev1.calculateSalary());
  print('----------');
  ac1.printDetails();
  print(ac1.calculateSalary());
}
