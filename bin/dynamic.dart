void main() {
  // Deklrasi variable dynamic
  dynamic dymamicValue;

  // Menggunakan dynamic untuk menyimpan berbagai tipe data
  dymamicValue = "Hello, Dart!";
  print('String: $dymamicValue');

  dymamicValue = 42;
  print('Integer: $dymamicValue');

  dymamicValue = 3.14;
  print('Double: $dymamicValue');

  dymamicValue = [1, 2, 3];
  print('List: $dymamicValue');

  dymamicValue = {'name': 'Eko', 'age': 21};
  print('Map: $dymamicValue');

  // Menggunakan dynamic dalam fungsi
  printValue("Ini adalah string");
  printValue(12345);
  printValue([1, 2, 3]);

  // Penangan kesalahan dengan dynamic
  dynamic errorValue = "This is a string";
  try {
    print("Length: ${errorValue.length}");
    errorValue = 100;
    print("Length after change: ${errorValue.length}");
  } catch (e) {
    print("Error: $e");
  }

  // Menggunakan dynamic dalam list
  List<dynamic> dynamicList = [];
  dynamicList.add(1);
  dynamicList.add("Dart");
  dynamicList.add(3.14);
  dynamicList.add([1, 2, 3]);

  print('Dynamic list: $dynamicList');

  // Menggunakan dynamic dalam map
  Map<String, dynamic> user = {
    'name': 'Eko',
    'age': 21,
    'isStudent': true,
  };

  print('User map: $user');

  // Mengubah nilai dalam map
  user['age'] = 22;
  print("Updated user map: $user");

  // Menggunakan dynamic dengan type checking
  dynamic mixedValue = "I can be anything";
  if (mixedValue is String) {
    print("Mixed Value is a String: ${mixedValue.toUpperCase()}");
  } else if (mixedValue is int) {
    print("Mixed value is an Integer: $mixedValue");
  }

  // Late initialization with dynamic
  late dynamic lateInitializedValue;
  lateInitializedValue = "Initialized later!";
  print("Late initialized value: $lateInitializedValue");

  dynamic result = addValues(10, 20);
  print("Result of addition: $result");

  result = addValues(10.5, 20.5);
  print("Result of addition: $result");
}

// Fungsi mencetak nilai
void printValue(dynamic value) {
  print('Value: $value');
}

// Fungsi untuk menambahkan dua nilai
dynamic addValues(a, dynamic b) {
  return a + b;
}
