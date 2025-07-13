void main() {
// number of seats ? غرفة الصالة في السينما
// رقم الغرفة ده اللى بسال بيه ده UNIQUE
  Map<int, int> numberOfSeats = {1: 100, 2: 50, 3: 150, 4: 400, 5: 500};
  print(numberOfSeats[3]);
//  كدا انا ضيفت
//  غرفة 8 فيها عدد كراسي 20
  numberOfSeats[8] = 20;
  print(numberOfSeats);

  Map<String, num> priceOfProtect = {
    'labtop': 4500,
    'computer': 5000,
    'handfree': 200
  };
  print(priceOfProtect['labtop']);
}
