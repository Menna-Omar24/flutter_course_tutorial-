void main() {
  // ===============================
  // 🔢 Integer Properties & Methods
  // ===============================

  print(5.isEven);        // false → 5 is not divisible by 2
  print(5.isOdd);         // true  → 5 is an odd number

  print(5 % 2 == 0);      // false → alternative way to check even
  print(5.isEven);        // false
  print(5.isOdd);         // true

  print(5.isNegative);    // false → 5 is not negative
  // print(-5.isNegative); // ❌ Error: can't use .isNegative directly after minus sign

  print((-5).isNegative); // true → negative check must be wrapped in parentheses
  print(0.isNegative);    // false

  // 🔁 Absolute value
  print((-10).abs());     // 10
  print((10).abs());      // 10
  print((10.5).abs());    // 10.5 → works with double too

  /*
    🔸 isEven & isOdd only work on integers.
    🔸 If you have a double, convert it to int first.
  */
  print(10.5.toInt().isEven);   // true → 10
  print(10.5.ceil().isEven);    // false → 11
  print(10.5.round().isEven);   // false → 11
  print(10.5.floor().isEven);   // true  → 10

  // ===============================
  // 🔠 String Built-in Methods
  // ===============================

  print('hello'.toUpperCase());        // HELLO
  print('HELLo'.toLowerCase());        // hello

  // 🔍 Contains
  print('Hello'.contains('e'));        // true
  print('Hello'.contains('E'));        // false → case sensitive
  print('Hello'.contains('HL'));       // false

  // 🔍 Starts With
  print('Hello'.startsWith('H'));      // true
  print('Hello'.startsWith('h'));      // false
  print('Hello'.startsWith('He'));     // true
  print('Hello'.startsWith('HE'));     // false

  // 🔍 Ends With
  print('Hello'.endsWith('HE'));       // false
  print('Hello'.endsWith('LO'));       // false
  print('Hello'.endsWith('L'));        // false
  print('Hello'.endsWith('O'));        // false

  // Best way: lowercase first
  print('Hello'.toLowerCase().endsWith('o'));   // true
  print('Hello'.toLowerCase().endsWith('O'));   // true

  // 📏 Length
  print('hello'.length);             // 5
  print('h ello'.length);            // 6 (space counts)

  // 🔎 IndexOf
  print('hello'.indexOf('e'));       // 1
  print('hello'.indexOf('l'));       // 2
  print('hello'.indexOf('h'));       // 0
  print('hello'.indexOf('el'));      // 1
  print('hello'.indexOf('lo'));      // 3
  print('hello'.indexOf('a'));       // -1 → not found
  print('hello'.indexOf('lo123'));   // -1 → not found

  /* Index positions:
     h  e  l  l  o
     0  1  2  3  4
  */

  // 🔎 Last index of a character
  print('hello'.lastIndexOf('l'));   // 3

  // 🧼 Trim spaces
  print('      MennaOmar@ieee.org      '.trim());      // removes both sides
  print('      MennaOmar@ieee.org      '.trimLeft());  // removes left only
  print('      MennaOmar@ieee.org      '.trimRight()); // removes right only

  // 🧩 Splitting strings
  print('menna,omar,hassan'.split(','));       // [menna, omar, hassan]
  print('menna omar hassan'.split(' '));       // [menna, omar, hassan]

  print('menna , omar , hassan'.split(' ').first); // menna
  print('menna , omar , hassan'.split(' ').last);  // hassan

  // 🔡 Access individual characters by index
  print('menna'[0]); // m
  print('menna'[1]); // e
  print('menna'[2]); // n

  // 🔚 Get last character from string
  String name = 'menna omar hassan';
  print(name[name.length - 1]); // n
}
