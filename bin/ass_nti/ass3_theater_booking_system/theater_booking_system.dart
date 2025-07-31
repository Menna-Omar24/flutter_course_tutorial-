import 'dart:io';

void main() {
  List<List<String>> seats = List.generate(5, (_) => List.filled(5, 'E'));
  Map<String, Map<String, String>> bookings = {};

  while (true) {
    print('\n🎭 Welcome To Our Theater 🎭\n');
    print('press 1 to book new seat');
    print('press 2 to show the theater seats');
    print('press 3 to show users data');
    print('press 4 to exit');

    stdout.write('input => ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        bookSeat(seats, bookings);
        break;
      case '2':
        displaySeats(seats);
        break;
      case '3':
        showBookings(bookings);
        break;
      case '4':
        print('\nSee You Back 👋');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void displaySeats(List<List<String>> seats) {
  print('\nTheater Seats:');
  for (var row in seats) {
    print(row.join(' '));
  }
}

void bookSeat(List<List<String>> seats, Map<String, Map<String, String>> bookings) {
  stdout.write('Enter row (1-5): ');
  int? row = int.tryParse(stdin.readLineSync()!);
  if (row == null || row < 1 || row > 5) {
    print('Invalid row.');
    return;
  }

  stdout.write('Enter column (1-5): ');
  int? col = int.tryParse(stdin.readLineSync()!);
  if (col == null || col < 1 || col > 5) {
    print('Invalid column.');
    return;
  }

  if (seats[row - 1][col - 1] == 'B') {
    print('❌ Seat already booked.');
    return;
  }

  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('Enter your phone number: ');
  String? phone = stdin.readLineSync();

  seats[row - 1][col - 1] = 'B';
  bookings['${row},${col}'] = {
    'name': name ?? '',
    'phone': phone ?? '',
  };

  print('✅ Seat booked successfully!');
}

void showBookings(Map<String, Map<String, String>> bookings) {
  if (bookings.isEmpty) {
    print('\nNo bookings found.');
    return;
  }

  print('\nUsers Booking Details:');
  bookings.forEach((seat, userData) {
    print('Seat $seat: ${userData['name']} - ${userData['phone']}');
  });
}
