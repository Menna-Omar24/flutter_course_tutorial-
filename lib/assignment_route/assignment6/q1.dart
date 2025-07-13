import 'dart:math';

abstract class GeometricObject {
  String color;
  bool filled;

  GeometricObject({this.color = 'white', this.filled = false});

  GeometricObject.withValues(this.color, this.filled);

  @override
  String toString() {
    return 'GeometricObject: Color = $color, Filled = $filled';
  }

  double getArea();

  double getPerimeter();
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
    super.color,
    super.filled,
  });

  Triangle.withSides({
    required this.side1,
    required this.side2,
    required this.side3,
    super.color,
    super.filled,
  });

  @override
  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3, ${super.toString()}';
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle({
    this.height = 1.0,
    this.width = 1.0,
    super.color,
    super.filled,
  });

  Rectangle.withCustom({
    required this.height,
    required this.width,
    super.color,
    super.filled,
  });

  @override
  double getArea() {
    return height * width;
  }

  @override
  double getPerimeter() {
    return 2 * (height + width);
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width, ${super.toString()}';
  }
}

void main() {
  GeometricObject triangle =
      Triangle(side1: 3.0, side2: 4.0, side3: 5.0, color: "blue", filled: true);
  GeometricObject rectangle =
      Rectangle(height: 4.0, width: 6.0, color: "green", filled: false);

  print(triangle.toString());
  print('Area: ${triangle.getArea()}');
  print('Perimeter: ${triangle.getPerimeter()}');
  print('');
  print(rectangle.toString());
  print('Area: ${rectangle.getArea()}');
  print('Perimeter: ${rectangle.getPerimeter()}');
}
