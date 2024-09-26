void main() {
  // Konversi dari String ke int
  String strNum = "123";
  int intNum = int.parse(strNum);
  print("String to int: $intNum");

  // Konversi dari String ke double
  String strDouble = "123.45";
  double doubleNum = double.parse(strDouble);
  print("String to double: $doubleNum");

  // Konversi dari int ke String
  intNum = 123;
  String intToStr = intNum.toString();
  print("int to String: $intToStr");

  // Konversi dari int ke double
  double fromIntToDouble = intNum.toDouble();
  print("int to double: $fromIntToDouble");

  // Konversi dari double ke String
  doubleNum = 123.45;
  String doubleToStr = doubleNum.toString();
  print("double to String: $doubleToStr");

  // Konversi dari double ke int
  int fromDoubleToInt = doubleNum.toInt();
  print("double to int: $fromDoubleToInt");

  // Konversi dari Boolean ke String
  bool isTrue = true;
  String boolToStr = isTrue.toString();
  print("Boolean to String: $boolToStr");

  // Konversi dari String ke Boolean
  String strBoolTrue = "true";
  bool strToBoolTrue = strBoolTrue.toLowerCase() == "true";
  print("String to Boolean (true): $strToBoolTrue");

  String strBoolFalse = "false";
  bool strToBoolFalse = strBoolFalse.toLowerCase() == "true";
  print("String to Boolean (false): $strToBoolFalse");

  // Konversi dari List ke String
  List<int> numbers = [1, 2, 3];
  String listToStr = numbers.join(", ");
  print("List to String: $listToStr");

  // Konversi dari Map ke String
  Map<String, dynamic> map = {"name": "Alice", "age": 30};
  String mapToStr = map.toString();
  print("Map to String: $mapToStr");

  // Konversi dari Set ke List
  Set<int> numberSet = {1, 2, 3};
  List<int> numberList = numberSet.toList();
  print("Set to List: $numberList");

  // Penanganan Kesalahan saat konversi
  String invalidNum = "abc";
  try {
    int invalidInt = int.parse(invalidNum);
    print(invalidInt);
  } catch (e) {
    print('Error during conversion: $e');
  }

  // Mengonversi dengan presisi
  double anotherDouble = 56.78;
  String anotherDoubleToStr = anotherDouble.toStringAsFixed(1);
  print("double to String with 1 decimal: $anotherDoubleToStr");

  // Konversi List String ke List int
  List<String> stringNumbers = ["1", "2", "3"];
  List<int> convertedList = stringNumbers.map((str) => int.parse(str)).toList();
  print("Converted List of Strings to Integers: $convertedList");

  // Konversi List of doubles ke List of String
  List<double> doubleList = [1.1, 2.2, 3.3];
  List<String> convertedDoubleList =
      doubleList.map((d) => d.toString()).toList();
  print("List of Doubles to List of Strings: $convertedDoubleList");

  // Konversi dari String ke DateTime
  String dateStr = "2024-09-26";
  DateTime dateTime = DateTime.parse(dateStr);
  print("String to DateTime: $dateTime");

  // Konversi dari DateTime ke String
  String dateTimeToStr = dateTime.toIso8601String();
  print("DateTime to String: $dateTimeToStr");

  // Konversi dari String ke List
  String csv = "apple,banana,cherry";
  List<String> fruits = csv.split(",");
  print("String to List: $fruits");

  // Konversi dari List ke Set
  Set<String> fruitSet = fruits.toSet();
  print("List to Set: $fruitSet");

  // Konversi dari Boolean ke Integer
  int boolToInt = isTrue ? 1 : 0;
  print("Boolean to Integer: $boolToInt");

  // Konversi dari Integer ke Boolean
  bool intToBool = intNum != 0;
  print("Integer to Boolean: $intToBool");

  // Contoh konversi dengan kelas generik
  dynamic dynamicValue = "45";
  if (dynamicValue is String) {
    int parsedValue = int.parse(dynamicValue);
    print("Dynamic to int: $parsedValue");
  }
}
