class Holiday {
  String name;
  int day;
  String month;

  Holiday({required this.name, required this.day, required this.month});

  bool inSameMonth(Holiday other) {
    return month == other.month;
  }

  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) return 0.0;

    int totalDays = 0;
    for (Holiday holiday in holidays) {
      totalDays += holiday.day;
    }
    return totalDays / holidays.length;
  }

  @override
  String toString() {
    return 'Holiday: $name, Day: $day, Month: $month';
  }
}

void main() {
  Holiday holiday1 = Holiday(name: 'New Year', day: 1, month: 'January');
  Holiday holiday2 =
      Holiday(name: 'Valentine\'s Day', day: 14, month: 'February');
  Holiday holiday3 = Holiday(name: 'Christmas', day: 25, month: 'December');
  Holiday holiday4 = Holiday(name: 'Easter', day: 17, month: 'April');
  Holiday holiday5 = Holiday(name: 'Thanksgiving', day: 28, month: 'November');
  Holiday holiday6 = Holiday(name: 'Thanksgiving', day: 25, month: 'November');

  Holiday independenceDay =
      Holiday(name: 'Independence Day', day: 4, month: 'July');

  print('Testing inSameMonth method:');
  print(
      'Holiday1 and Holiday2 in same month? ${holiday1.inSameMonth(holiday2)}'); // false
  print(
      'Holiday5 and Holiday6 in same month? ${holiday5.inSameMonth(holiday6)}'); // true
  print(
      'Independence Day with Holiday3 in same month? ${independenceDay.inSameMonth(holiday3)}'); // false

  List<Holiday> holidays = [
    holiday1,
    holiday2,
    holiday3,
    holiday4,
    holiday5,
    holiday6
  ];
  double averageDay = Holiday.avgDate(holidays);
  print('Average day in holidays: $averageDay');
}
