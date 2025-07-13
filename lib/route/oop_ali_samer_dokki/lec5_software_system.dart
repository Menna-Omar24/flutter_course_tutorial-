// software system
// developer --> id , name , salary , framework ---> 25% plus salary
// accountants --> id , name , salary , certifiedExcel ---> 10% plus salary
// general case  employee ---> inheritance
// is a , some kind of
class Developer {
  int id;
  String name;
  double salary;
  String frameWork;

  Developer(
      {required this.id,
      required this.name,
      required this.salary,
      required this.frameWork});

  void printDetails() {
    print(id);
    print(name);
    print(salary);
    print(frameWork);
  }

  double calculateSalary() {
    return salary + (salary * 0.25);
  }
}

class Accountant {
  int id;
  String name;
  double salary;
  bool isCertifiedExcel;

  Accountant(
      {required this.id,
      required this.name,
      required this.salary,
      required this.isCertifiedExcel});

  void printDetails() {
    print(id);
    print(name);
    print(salary);
    print(isCertifiedExcel);
  }

  double calculateSalary() {
    return salary + (salary * 0.1);
  }
}

void main() {
  Accountant ac1 = Accountant(
      id: 101, name: 'MOHAMED', salary: 1000, isCertifiedExcel: false);
  Developer dev1 =
      Developer(id: 101, name: 'Menna', salary: 20000, frameWork: 'flutter');
  ac1.name;
  dev1.name;
}
//كل ده غلط بسبب تكرار الكود والحل استخدام inheritance
