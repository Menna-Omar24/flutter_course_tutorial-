class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing a rectangle');
  }
}

void main() {
  List<Shape> shapes = [Circle(), Rectangle()];
  for (var shape in shapes) {
    shape.draw();
  }
}
