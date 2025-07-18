void main() {
  // =============================
  // 🔘 Boolean Values & Operators
  // =============================

  // ✅ Basic Boolean assignment
  bool x = true;
  bool y = false;

  // ✅ Comparison operators return bool
  bool n = 5 > 6;     // false
  bool n1 = 5 < 6;    // true
  bool n2 = 5 <= 6;   // true
  bool n3 = 5 >= 6;   // false
  bool n4 = 5 == 5;   // true
  bool n5 = 5 != 5;   // false
  bool n6 = 5 != 6;   // true

  bool n7 = 5 != 5 && 6 != 6; // false && false => false

  /*
  🔹 Logical Operators:
    && → AND
    || → OR
    !  → NOT

  ✅ AND Truth Table (&&):
    T && T → T
    T && F → F
    F && T → F
    F && F → F

  ✅ OR Truth Table (||):
    T || T → T
    T || F → T
    F || T → T
    F || F → F
  */

  bool n8 = 5 == 5 && 6 != 6;   // true && false => false
  bool n9 = 5 == 5 || 6 != 6;   // true || false => true

  bool z = 10 > 20;             // false

  bool n10 = 5 == 5 && 6 != 6;  // false
  bool n11 = 5 == 5 || 6 != 6;  // true

  // ✅ Combining expressions
  bool n12 = n10 && n11;       // false && true => false
  bool n13 = n10 || n11;       // false || true => true

  bool n14 = n10 && n11 || 10 > 20;  // false && true || false => false
  bool n15 = (n10 && n11) || (10 > 20); // grouped for readability

  // =============================
  // 🔁 if Statements with Boolean
  // =============================

  bool x1 = true;
  bool x2 = false;

  // Option 1: explicit comparison
  if (x1 == true) {
    print('x'); // will print
  }

  // Option 2: more clean
  if (x1) {
    print(x1); // prints: true
  }

  // OR condition
  if (x2 || x1) {
    print('x'); // true because x1 is true
  }

  // AND condition
  if (x2 && x1) {
    print('x'); // won't run, x2 is false
  }

  // =============================
  // 🔁 if...else if...else Logic
  // =============================

  bool m = true;
  bool m2 = false;

  if (m2 || m) {
    print('if'); // true because m is true
  }

  bool g = true;
  bool l = false;

  if (g) {
    print('if'); // runs here
  } else if (l) {
    print('else if');
  } else {
    print('else');
  }

  // ❗ Logical NOT (!)
  bool g1 = true;
  bool l1 = false;

  if (!g1) {
    print('if'); // false, won't run
  } else if (g1) {
    print('else if'); // true, will print
  } else {
    print('else');
  }

  bool g2 = true;
  bool l2 = false;

  if (!g2) {
    print('if'); // false
  } else if (!g2) {
    print('else if'); // false
  } else {
    print('else'); // this will run
  }
}
