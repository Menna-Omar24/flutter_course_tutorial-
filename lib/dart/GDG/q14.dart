class Car {
  String brand;
  String model;
  double _price;

  Car({required this.brand, required this.model, required double price})
      : _price = (price > 0) ? price : 0;

  double get price => _price;

  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print('Error: Price must be greater than zero!');
    }
  }

  void displayInfo() {
    print('Car Brand: $brand');
    print('Car Model: $model');
    print('Car Price: $_price');
  }
}

void main() {
  Car car1 = Car(brand: 'Mercedes', model: 'C-class', price: 1300000);
  car1.displayInfo();

  car1.price = 550000;
  print('After updating the price:');
  car1.displayInfo();

  car1.price = 200000;
  print('After setting a new price:');
  car1.displayInfo();

  car1.price = -5000;
}
