/*
Create a base class Employee with the following properties:
name (String)
id (int)
Add a method displayInfo() to display the name and ID of the employee.
Then, create a subclass Manager that inherits from Employee and adds an additional property:
department (String)
Add a method displayManagerInfo() to display all information: name, ID, and department.
*/
class Employee {
  String name;
  int id;

  Employee({required this.name, required this.id});

  void displayInfo() {
    print('Employee name : $name');
    print('Employee id : $id');
  }
}

class Manager extends Employee {
  String department;

  Manager({required super.name, required super.id, required this.department});

  void displayManagerInfo() {
    displayInfo();
    print('Manager department: $department');
  }
}

void main() {
  Manager man1 = Manager(name: 'Menna Omar', id: 521197, department: 'Mis');
  man1.displayManagerInfo();
}
