void main() {
  //draw ---> circle
//   ازاي اقدر امثل الدايرة ككود
// ف كدا هروح على oop
  Circle circle = Circle(radius: 5, x: 6, y: 7);
  circle.draw();
}

class Circle {
  double radius;
  int x;
  int y;

  Circle({required this.radius, required this.x, required this.y});

  draw() {
    print('draw this circle at x=$x and y=$y with radius $radius');
  }
}
