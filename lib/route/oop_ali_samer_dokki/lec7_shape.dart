import 'dart:io';

class Shape {
  int height;
  int weight;

  Shape(this.height, this.weight);

  double calculateArea() {
    return 0;
  }

  void draw() {
    print("shape can't be drawn");
  }
}

class Rectangle extends Shape {
  Rectangle(super.height, super.weight);

  @override
  double calculateArea() {
    return (height * weight).toDouble();
  }

  // Rectangle 5*10
  // * * * * * * * * * *
  // * * * * * * * * * *
  // * * * * * * * * * *
  // * * * * * * * * * *
  // * * * * * * * * * *

  @override
  void draw() {
    for (int i = 0; i < height; i++) {
      for (int j = 0; j < weight; j++) {
        stdout.write("* ");
      }
      print('');
    }
  }
}

class Triangle extends Shape {
  Triangle(super.height, super.weight);

  @override
  double calculateArea() {
    return 0.5 * height * weight;
  }

  // Triangle 5*0
  // *
  // * *
  // * * *
  // * * * *
  // * * * * *

  @override
  void draw() {
    for (int i = 0; i < height; i++) {
      for (int j = 0; j <= i; j++) {
        stdout.write('* ');
      }
      print('');
    }
  }
}

void main() {
  Rectangle rec1 = Rectangle(5, 10);
  Triangle ter1 = Triangle(5, 10);
  rec1.draw();
  ter1.draw();
  print(rec1.calculateArea());
  print(ter1.calculateArea());
}
