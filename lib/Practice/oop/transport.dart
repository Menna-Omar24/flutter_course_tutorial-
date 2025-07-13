// Base class representing any type of transport
class Transport {
  String color;
  int speed;

  // Constructor
  Transport(this.color, this.speed);

  void move() {
    print('The transport is moving at $speed km/h.');
  }

  void stop() {
    speed = 0;
    print('The transport has stopped.');
  }
}

// Car class inherits from Transport
class Car extends Transport {
  Car(super.color, super.speed);

  void honk() {
    print('Beep Beep! The car is honking!');
  }

  @override
  void move() {
    print('🚗 The car is speeding at $speed km/h! 🚗💨');
  }
}

// Plane class inherits from Transport
class Plane extends Transport {
  Plane(super.color, super.speed);

  void fly() {
    print('✈ The plane is flying at $speed km/h! ✈');
  }

  @override
  void move() {
    print('🛫 The plane is taking off at $speed km/h! 🛫');
  }
}

// Bus class inherits from Transport
class Bus extends Transport {
  Bus(super.color, super.speed);

  void stopAtStation() {
    print('🚌 The bus is stopping at the station.');
  }
}

// Main function to test everything
void main() {
  // Creating a generic transport object
  Transport myTransport = Transport('Gray', 60);
  myTransport.move();
  myTransport.stop();

  print('----------------------');

  // Creating a Car object
  Car myCar = Car('Red', 150);
  myCar.move();
  myCar.honk();
  myCar.stop();

  print('----------------------');

  // Creating a Plane object
  Plane myPlane = Plane('White', 800);
  myPlane.move();
  myPlane.fly();
  myPlane.stop();

  print('----------------------');

  // Creating a Bus object
  Bus myBus = Bus('Blue', 90);
  myBus.move();
  myBus.stopAtStation();
  myBus.stop();
}
