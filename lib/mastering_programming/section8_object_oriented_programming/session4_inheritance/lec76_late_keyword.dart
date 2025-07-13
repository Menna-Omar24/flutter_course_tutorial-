void main() {
  Circle circle = Circle.origin(radius: 5);
  circle.x = 16;
  circle.y = 20;
  circle.draw();
}

class Circle {
  double radius;

  // late --->  على ضمنتي انا اكيد المتغير ده هياخد القيمة قبل ما يتم استخدامك
  late int x;
  late int y;

  Circle.origin({required this.radius}) {
    // x = 0;
    // y = 0;
  }

  draw() {
    print('draw this circle at x=$x and y=$y with radius $radius');
  }
}
