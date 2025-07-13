// Create a map of employee names and their salaries, then increase each employee's salary by 10% and print the new salary.
void main() {
  Map<String, double> employees = {
    'Menna': 20000,
    'Omar': 5000,
    'Hassan': 3000,
    'Mohamed': 80000,
  };
  print('Salaries after a 10% increase: ');

  employees.forEach((name, salary) {
    double newSalary = salary * 1.10;
    print('$name: ${newSalary.toStringAsFixed(2)} EGP');
  });
}
