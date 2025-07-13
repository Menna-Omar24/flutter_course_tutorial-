enum Month {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december
}

class Holiday {
  final String name;
  final int day;
  final Month month;

  Holiday({required this.name, required this.day, required this.month}) {
    if (!_isValidDayForMonth(day, month)) {
      throw ArgumentError(
          'Invalid day $day for month ${month.toString().split('.').last}');
    }
  }

  bool inSameMonth(Holiday other) {
    return month == other.month;
  }

  static bool _isValidDayForMonth(int day, Month month) {
    const Map<Month, int> daysInMonth = {
      Month.january: 31,
      Month.february: 28,
      Month.march: 31,
      Month.april: 30,
      Month.may: 31,
      Month.june: 30,
      Month.july: 31,
      Month.august: 31,
      Month.september: 30,
      Month.october: 31,
      Month.november: 30,
      Month.december: 31,
    };

    if (day < 1 || day > daysInMonth[month]!) return false;
    return true;
  }

  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) return 0.0;

    int totalDays = holidays.fold(0, (sum, holiday) => sum + holiday.day);
    return totalDays / holidays.length;
  }

  void updateHoliday({String? newName, int? newDay}) {
    if (newName != null) {
      print('Updating holiday name from $name to $newName');
      // Here we would actually update the name if needed
    }
    if (newDay != null) {
      if (!_isValidDayForMonth(newDay, month)) {
        throw ArgumentError(
            'Invalid day $newDay for month ${month.toString().split('.').last}');
      }
      print('Updating holiday day from $day to $newDay');
      // Here we would actually update the day if needed
    }
  }

  @override
  String toString() {
    return 'Holiday: $name, Day: $day, Month: ${month.toString().split('.').last}';
  }
}

void main() {
  // Create a Holiday object
  Holiday independenceDay =
      Holiday(name: 'Independence Day', day: 4, month: Month.july);

  // Test inSameMonth method
  Holiday holiday1 = Holiday(name: 'Christmas', day: 25, month: Month.december);
  Holiday holiday2 = Holiday(name: 'New Year', day: 1, month: Month.january);
  Holiday holiday3 =
      Holiday(name: 'Independence Day', day: 4, month: Month.july);

  print('Testing inSameMonth method:');
  print(
      'Holiday1 and Holiday2 in same month? ${holiday1.inSameMonth(holiday2)}'); // Should print false
  print(
      'Holiday1 and Holiday3 in same month? ${holiday1.inSameMonth(holiday3)}'); // Should print false
  print(
      'Holiday3 and Independence Day in same month? ${holiday3.inSameMonth(independenceDay)}'); // Should print true

  // Test avgDate method
  List<Holiday> holidays = [holiday1, holiday2, holiday3];
  double averageDay = Holiday.avgDate(holidays);
  print('Average day in holidays: $averageDay');

  // Test updateHoliday method
  try {
    independenceDay.updateHoliday(
        newName: 'Independence Day Updated', newDay: 5);
  } catch (e) {
    print(e);
  }
}
