void main() {
  Employee emp = Employee(
    name: 'Menna Omar',
    gender: 'female',
    nationalId: '2320564977',
  );
  emp.viewDetailed();
  print('');
  // مثال لاستخدام الإجازات والتصاريح
  emp.takeVacations(17); // أكتر من المتاح علشان نختبر الخصم
  emp.takePermission(22); // أكتر من الساعات المسموحة
  emp.viewDetailed(); // نشوف التأثير بعد الخصومات
}

class Employee {
  String name;
  String nationalId;
  String gender;
  static double salary = 1500;

  int availableVacations;
  static double deductionPerDay = 85.5;
  int availablePermissionHours;
  static double deductionPerHour = 15.5;
  double actualSalary;

  Employee({this.name = " ", this.nationalId = " ", this.gender = " "})
      : availablePermissionHours = 20,
        availableVacations = 15,
        actualSalary = salary;

  view() {
    print('Name $name');
    print('NationalID $nationalId');
    print('Gender $gender');
    print('ActualSalary $actualSalary');
  }

  viewDetailed() {
    view();
    print('AvailableVacations $availableVacations');
    print('availablePermissionHours $availablePermissionHours');
  }

  takeVacations(int day) {
    availableVacations = availableVacations - day;
    if (availableVacations < 0) {
      calculateSalary();
    }
  }

  takePermission(int hours) {
    availablePermissionHours = availablePermissionHours - hours;
    if (availablePermissionHours < 0) {
      calculateSalary();
    }
  }

  calculateSalary() {
    if (availableVacations < 0) {
      double loss = availableVacations.abs() * deductionPerDay;
      actualSalary = actualSalary - loss;
      availableVacations = 0;
    }
    if (availablePermissionHours < 0) {
      double loss = availablePermissionHours.abs() * deductionPerHour;
      actualSalary = actualSalary - loss;
      availablePermissionHours = 0;
    }
  }
}
