void main() {
  //draw ---> circle
  // لو عايزة ادي امكانية لليوز ان يرسم لدايرة بشكل اسرع
  // draw origin 0 , 0 ---> named constructor
  Circle circle = Circle.origin(radius: 5);
  circle.draw();
}

class Circle {
  double radius;
  int? x;
  int? y;

  // name constructor
  Circle.origin({required this.radius}) {
    x = 0;
    y = 0;
  }

  draw() {
    print('draw this circle at x=$x and y=$y with radius $radius');
  }
}
