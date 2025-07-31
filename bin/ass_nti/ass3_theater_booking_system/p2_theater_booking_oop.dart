import 'dart:io';

void main() {
  TheaterApp theaterApp = TheaterApp(5, 5);
  theaterApp.run();
}

class TheaterApp {
  final SeatManager seatManager;
  final BookingManager bookingManager;
  final InputHandler inputHandler = InputHandler();

  TheaterApp(int rows, int cols)
      : seatManager = SeatManager(rows, cols),
        bookingManager = BookingManager();

  void run() {
    print('\n🎭 Welcome To Our Theater 🎭\n');
    while (true) {
      _printMenu();
      int choice = inputHandler.getIntInput('Enter your choice (1-4): ', 1, 4);
      switch (choice) {
        case 1:
          _bookSeatFlow();
          break;
        case 2:
          seatManager.displaySeats();
          break;
        case 3:
          bookingManager.showAllBookings();
          break;
        case 4:
          print('\n👋 See You Back!\n');
          return;
      }
    }
  }

  void _printMenu() {
    print('''
========== Menu ==========
1. Book a Seat
2. Show Theater Seats
3. Show Booking Info
4. Exit
==========================
''');
  }

  void _bookSeatFlow() {
    seatManager.displaySeats();
    int row = inputHandler.getIntInput('Enter row (1-${seatManager.rows}): ', 1, seatManager.rows) - 1;
    int col = inputHandler.getIntInput('Enter column (1-${seatManager.cols}): ', 1, seatManager.cols) - 1;

    if (seatManager.isBooked(row, col)) {
      print('❌ Seat already booked.');
      return;
    }

    String name = inputHandler.getNonEmptyString('Enter your name: ');
    String phone = inputHandler.getPhoneNumber('Enter your phone number: ');

    seatManager.bookSeat(row, col);
    bookingManager.addBooking(Booking(User(name, phone), row, col));

    print('\n✅ Booking successful!');
  }
}

class SeatManager {
  final int rows;
  final int cols;
  late List<List<bool>> _seats;

  SeatManager(this.rows, this.cols) {
    _seats = List.generate(rows, (_) => List.filled(cols, false));
  }

  void displaySeats() {
    print('\n🎭 Theater Seats (E = Empty, B = Booked):');
    stdout.write('   ');
    for (int c = 0; c < cols; c++) stdout.write('${c + 1} ');
    print('');
    for (int r = 0; r < rows; r++) {
      stdout.write('${r + 1}  ');
      for (int c = 0; c < cols; c++) {
        stdout.write(_seats[r][c] ? 'B ' : 'E ');
      }
      print('');
    }
  }

  bool isBooked(int row, int col) => _seats[row][col];

  void bookSeat(int row, int col) {
    _seats[row][col] = true;
  }
}

class BookingManager {
  final List<Booking> _bookings = [];

  void addBooking(Booking booking) {
    _bookings.add(booking);
  }

  void showAllBookings() {
    if (_bookings.isEmpty) {
      print('\n📭 No bookings yet.');
      return;
    }
    print('\n📒 Booking Details:');
    for (var booking in _bookings) {
      print('Seat ${booking.row + 1},${booking.col + 1}: ${booking.user.name} - ${booking.user.phone}');
    }
  }
}

class User {
  final String name;
  final String phone;

  User(this.name, this.phone);
}

class Booking {
  final User user;
  final int row;
  final int col;

  Booking(this.user, this.row, this.col);
}

class InputHandler {
  String getNonEmptyString(String prompt) {
    while (true) {
      stdout.write(prompt);
      String? input = stdin.readLineSync()?.trim();
      if (input != null && input.isNotEmpty) return input;
      print('❌ Input cannot be empty! Try again.');
    }
  }

  int getIntInput(String prompt, int min, int max) {
    while (true) {
      stdout.write(prompt);
      String? input = stdin.readLineSync()?.trim();
      int? value = int.tryParse(input ?? '');
      if (value != null && value >= min && value <= max) return value;
      print('❌ Invalid number! Please enter between $min and $max.');
    }
  }

  String getPhoneNumber(String prompt) {
    final regex = RegExp(r'^\d{7,15}$');
    while (true) {
      stdout.write(prompt);
      String? input = stdin.readLineSync()?.trim();
      if (input != null && regex.hasMatch(input)) return input;
      print('❌ Invalid phone number! Must be 7-15 digits.');
    }
  }
}
