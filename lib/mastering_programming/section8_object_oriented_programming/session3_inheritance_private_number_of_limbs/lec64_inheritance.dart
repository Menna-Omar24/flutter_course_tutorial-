class Lion {
  int _numberOfLimbs = 4;

  set numberOfLimbs(int numberOfLimbs) {
    if (numberOfLimbs <= 4 && numberOfLimbs >= 0) {
      _numberOfLimbs = numberOfLimbs;
    }
  }

  int get numberOfLimbs => _numberOfLimbs;
}

class Dog {}

class Cat {}
