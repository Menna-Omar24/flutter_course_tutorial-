import 'dart:io';

void main() {
  final List<List<String>> seats = List.generate(5, (_) => List.filled(5, 'E'));
  final Map<String, Map<String, String>> bookings = {};

  print('\n🎭 Welcome To Our Theater 🎭\n');

  while (true) {
    showMenu();
    int choice = getPositiveInt('Enter your choice: ');

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
        print('\nSee You Back 👋\n');
        return;
      default:
        print('Invalid choice, please try again.');
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
  print('\nTheater Seats (E = Empty, B = Booked):');
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

  int row = getPositiveInt('Enter row (1-5): ');
  int col = getPositiveInt('Enter column (1-5): ');

  if (!isValidSeat(row, col)) {
    print('❌ Invalid seat number.');
    return;
  }

  if (seats[row - 1][col - 1] == 'B') {
    print('❌ Seat already booked.');
    return;
  }

  String name = getValidText('Enter your name: ');
  String phone = getValidText('Enter your phone number: ');

  // Save booking
  seats[row - 1][col - 1] = 'B';
  bookings['$row,$col'] = {
    'name': name,
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
  print('Name   : $name');
  print('Phone  : $phone');
  print('Seat   : Row $row, Column $col');
  print('Date   : ${DateTime.now()}');
  print('--------------------------');
  print('Enjoy your show! 🍿');
}

bool isValidSeat(int row, int col) {
  return row >= 1 && row <= 5 && col >= 1 && col <= 5;
}

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? '';
}

String getValidText(String message) {
  String input;
  do {
    input = prompt(message).trim();
    if (input.isEmpty) print('Input cannot be empty.');
  } while (input.isEmpty);
  return capitalizedWords(input);
}

String capitalizedWords(String text) {
  return text.trim().split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

int getPositiveInt(String message) {
  int? value;
  do {
    value = int.tryParse(prompt(message));
    if (value == null || value <= 0 || value > 100) {
      print('Enter a valid positive number.');
    }
  } while (value == null || value <= 0 || value > 100);
  return value;
}
