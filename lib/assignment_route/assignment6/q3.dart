abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(super.color, this.base, this.height);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return 'Triangle(color: $color, base: $base, height: $height)';
  }
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(super.color, this.length, this.width);

  @override
  double getArea() {
    return length * width.toDouble();
  }

  @override
  String toString() {
    return 'Rectangle(color: $color, length: $length, width: $width)';
  }
}

void main() {
  Shape triangle = Triangle('Red', 10, 5);
  Shape rectangle = Rectangle('Blue', 8, 6);

  print(triangle.toString());
  print('Triangle Area: ${triangle.getArea()}');

  print(rectangle.toString());
  print('Rectangle Area: ${rectangle.getArea()}');
}
