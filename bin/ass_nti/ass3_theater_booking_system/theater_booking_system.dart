import 'dart:io';

void main() {
  final List<List<String>> seats = List.generate(5, (_) => List.filled(5, 'E'));
  final Map<String, Map<String, String>> bookings = {};

  print('\n🎭 Welcome To Our Theater 🎭\n');

  while (true) {
    showMenu();
    int choice = getInput<int>(
      message: 'Enter your choice: ',
      validator: numberValidator(1, 4),
    );

    switch (choice) {
      case 1:
        bookSeat(seats, bookings);
        break;
      case 2:
        displaySeats(seats);
        break;
      case 3:
        showBookings(bookings);
        break;
      case 4:
        print('\n👋 See You Back!\n');
        return;
    }
  }
}

void showMenu() {
  print('\n========== Menu ==========');
  print('1. Book a Seat');
  print('2. Show Theater Seats');
  print('3. Show Booking Info');
  print('4. Exit');
  print('==========================');
}

void displaySeats(List<List<String>> seats) {
  print('\n🎭 Theater Seats (E = Empty, B = Booked):');
  print('   1 2 3 4 5');
  for (int i = 0; i < seats.length; i++) {
    stdout.write('${i + 1}  ');
    for (int j = 0; j < seats[i].length; j++) {
      stdout.write('${seats[i][j]} ');
    }
    print('');
  }
}

void bookSeat(
    List<List<String>> seats, Map<String, Map<String, String>> bookings) {
  displaySeats(seats);

  int row = getInput<int>(
    message: 'Enter row (1-5): ',
    validator: numberValidator(1, 5),
  );

  int col = getInput<int>(
    message: 'Enter column (1-5): ',
    validator: numberValidator(1, 5),
  );

  if (seats[row - 1][col - 1] == 'B') {
    print('❌ Seat already booked.');
    return;
  }

  String name = getInput<String>(
    message: 'Enter your name: ',
    validator: textValidator,
  );

  String phone = getInput<String>(
    message: 'Enter your phone number: ',
    validator: phoneValidator,
  );

  // Save booking
  seats[row - 1][col - 1] = 'B';
  bookings['$row,$col'] = {
    'name': capitalizedWords(name),
    'phone': phone,
  };

  print('\n✅ Booking successful!');
  printReceipt(row, col, name, phone);
}

void showBookings(Map<String, Map<String, String>> bookings) {
  if (bookings.isEmpty) {
    print('\n📭 No bookings yet.');
    return;
  }

  print('\n📒 Booking Details:');
  bookings.forEach((seat, data) {
    print('Seat $seat => ${data['name']} - ${data['phone']}');
  });
}

void printReceipt(int row, int col, String name, String phone) {
  print('\n📃 Booking Receipt');
  print('--------------------------');
  print('Name   : ${capitalizedWords(name)}');
  print('Phone  : $phone');
  print('Seat   : Row $row, Column $col');
  print('Date   : ${DateTime.now()}');
  print('--------------------------');
  print('Enjoy your show! 🍿');
}

String capitalizedWords(String text) {
  return text.trim().split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

T getInput<T>({
  required String message,
  required T? Function(String) validator,
}) {
  while (true) {
    stdout.write(message);
    String? input = stdin.readLineSync()?.trim();

    if (input == null || input.isEmpty) {
      print('❌ Input cannot be empty!');
      continue;
    }

    T? value = validator(input);
    if (value != null) return value;

    print('❌ Invalid input! Try again.');
  }
}

int? Function(String) numberValidator(int min, int max) {
  return (String input) {
    int? value = int.tryParse(input);
    if (value != null && value >= min && value <= max) return value;
    return null;
  };
}

String? phoneValidator(String input) {
  final regex = RegExp(r'^\d{7,15}$');
  return regex.hasMatch(input) ? input : null;
}

String? textValidator(String input) {
  return input.trim().isNotEmpty ? input : null;
}
