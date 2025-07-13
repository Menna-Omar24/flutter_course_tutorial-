import 'dart:io';

abstract class Shape {
  int height;
  int weight;

  Shape(this.height, this.weight);

  double calculateArea();

  void draw();
}

class Rectangle extends Shape {
  Rectangle(super.height, super.weight);

  @override
  double calculateArea() {
    return (height * weight).toDouble();
  }

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
  // polymorphism ---> shape (parent) ---> child(rectangle,Triangle)
  Shape rec1 = Rectangle(5, 10);
  Shape ter1 = Triangle(5, 10);
  rec1.draw();
  ter1.draw();
  print(rec1.calculateArea());
  print(ter1.calculateArea());
}
