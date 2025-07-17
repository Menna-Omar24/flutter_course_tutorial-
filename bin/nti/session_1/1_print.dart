void main() {
  print('\n✨ Different Ways to Print Strings in Dart ✨\n');

  // ✅ Double Quotes
  print("✅ Using Double Quotes:");
  print("Hello Dart");

  // ✅ Single Quotes
  print("\n✅ Using Single Quotes:");
  print('Hello Dart');

  // ✅ Triple Single Quotes
  print("\n✅ Using Triple Single Quotes:");
  print('''Hello Dart''');

  // ✅ Triple Double Quotes
  print("\n✅ Using Triple Double Quotes:");
  print("""Hello Dart""");

  print('\n==============================\n');

  // ❌ Incorrect Quotes (will cause error if uncommented)
  print("❌ Incorrect Use of Quotes:");
  print("Can't do: print('hello 'menna' ');");
  print("Can't do: print(\"hello \"menna\" \");");

  // ✅ Correct Quotes (using escapes or mixing quotes)
  print("\n✅ Correct Way:");
  print('hello "Dart"');
  print("hello 'Dart'");

  // ✅ Backslash Example
  print("\n✅ Backslash Example:");
  print('hello \'Dart\'');
  print("hello \"Dart\"");

  print('\n==============================\n');

  // ✅ New Line Example
  print("✅ New Line Example (\\n):");
  print('hello \n\'Dart\'');
  print("hello \n\"Dart\"");

  print('\n==============================\n');

  // ✅ Tab Example
  print("✅ Tab Example (\\t):");
  print("hello \t\"Dart\"");
  print('hello \t\'Dart\'');

  print('\n==============================\n');

  // ✅ Numbers and Expressions
  print("✅ Numbers and Operations:");
  print(5);          // Integer
  print('5+9');      // String
  print(5 + 9);      // Expression result

  print('\n==============================\n');

  // ✅ Dollar Sign Example
  print("✅ Dollar Sign Example:");
  print('\$');         // Just dollar sign
  // print("500 $");   // ❌ Will cause error
  print("500\$");      // Correct way using escape

  print('\n==============================\n');

  // ✅ Raw String Example
  print("✅ Raw String Example:");
  print('This is a raw string: \n \t \$ Hello'); // normal string
  print(r'This is a raw string: \n \t \$ Hello'); // raw string (no escaping)

  print('\n==============================\n');

  // ✅ String Interpolation
  print("✅ String Interpolation Example:");
  String name = 'Menna';
  int age = 21;
  print("My name is $name and I am $age years old.");
  print("Next year I will be ${age + 1} years old.");

  print('\n==============================\n');

  // ✅ Long Paragraph using Triple Quotes
  print("✅ Long Paragraph using Triple Quotes:");
  print('''
This is an example of a long paragraph.
You can write multiple lines here without any issues.
Each line will be printed exactly as it's written in the code.
This is the easiest and cleanest way to print long text.
''');

  // ✅ Long Paragraph using \n
  print("✅ Long Paragraph using \\n:");
  print('This is an example of a long paragraph.\nYou can manually add line breaks using \\n.\nEach \\n will move the text to a new line.\nUseful when you want full control over formatting.');

  // ✅ Long Paragraph stored in a variable
  print("\n✅ Long Paragraph stored in a variable:");
  String paragraph = '''
This is a sample paragraph stored in a variable.
It can be reused multiple times in your code.
This is useful when the same paragraph needs to be printed in different places.
''';
  print(paragraph);
}
