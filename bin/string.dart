void main() {
  String greeting = 'Hello, Dart';
  print(greeting);

  // Menggabungkan string menggunakan operator +
  String firstName = 'Eko';
  String lastName = 'Kurniawan';
  String fullName = '$firstName $lastName';
  print(fullName);

  // String interpolation
  int age = 20;
  String introduction = 'My name is $fullName and I am $age years old.';
  print(introduction);

  // Multiline string
  String multilineString = '''
This is a string
that spans multiple lines
''';
  print(multilineString);

  // String methods
  String text = 'Hello, Golang';
  print('Length: ${text.length}');
  print('Uppercase: ${text.toUpperCase()}');
  print('Lowercase: ${text.toLowerCase()}');
  print('Contains "Dart": ${text.contains('Golang')}');
  print('Substring (from index 7 to 13): ${text.substring(7, 13)}');
  print('Replace "Golang" with "Dart": ${text.replaceAll('Golang', 'Dart')}');
  print('Trimmed: ${'   Hello, Dart!    '.trim()}');

  // Menggunakan string dengan tipe data lain
  String numberString = '123';
  int number = int.parse(numberString);
  print('Number + 1: ${number + 1}');

  int anotherNumber = 456;
  String anotherNumberString = anotherNumber.toString();
  print('Another Number String: $anotherNumberString');

  // StringBuffeer untuk penggabungan yang effisien
  StringBuffer buffer = StringBuffer();
  buffer.write('Hello');
  buffer.write(', ');
  buffer.write('Dart!');
  print(buffer.toString());

  // Menggunakan escape sequences
  String escapeString = 'He said, "Hello!" and left.\nThis is a new line.';
  print(escapeString);
}
