void main() {
  // operator is
  var number = 10;

  if (number is int) {
    print('$number is a an integer');
  }

  // Menggunakan operator is!
  var text = "Dart";

  if (text is! int) {
    print('$text is not an integer');
  }

  // Menggunakan operator as
  dynamic dynamicValue = "42";

  int intValue;

  try {
    intValue = int.parse(dynamicValue);
    print('Casting dyanmic to integer: $intValue');
  } catch (e) {
    print('Could not cast $dynamicValue to an integer: ${e.toString()}');
  }

  var dynamicValue1 = "42";

  // Menggunakan tryParse untuk konversi
  var intValue1 = int.tryParse(dynamicValue);

  if (intValue1 != null) {
    print('Converted string to integer: $intValue1');
  } else {
    print('Could not convert $dynamicValue1 to an integer.');
  }

  // runtimeTyoe
  dynamic variable = "Hello";
  print(
      'Now, variable is of type: ${variable.runtimeType} and its value is : $variable');

  List<num> list = [1, 2, 3, 4.5];
  print('Type of list: ${list.runtimeType}');

  // memeriksa tipe dengan kombinasi
  checkTypeAndValue(42);
  checkTypeAndValue("Hello, Dart!");
  checkTypeAndValue(3.14);
  checkTypeAndValue([1, 2, 3]);
  checkTypeAndValue({'key': 'value'});

  // implement function getValue
  var unknownValue = getValue();

  if (unknownValue is String) {
    String castedValue = unknownValue;
    print('Casted value: $castedValue');
  } else {
    print('unknownValue is not a String.');
  }

  // implement function getAnotherValue
  try {
    var anotherValue = getAnotherValue();
    String anotherCastedValue = anotherValue as String;
    print(
        'Casted Value: $anotherCastedValue Type value: ${anotherCastedValue.runtimeType}');
  } catch (e) {
    print('Failed to cast anotherValue: $e');
  }
}

void checkTypeAndValue(dynamic value) {
  if (value is int) {
    print('$value is an integer.');
  } else if (value is String) {
    print('$value is a string.');
  } else if (value is double) {
    print('$value is a double.');
  } else if (value is List) {
    print('$value is a list with length ${value.length}.');
  } else if (value is Map) {
    print('$value is a map with ${value.length} entries.');
  } else {
    print('Unknown type: ${value.runtimeType}');
  }
}

dynamic getValue() {
  return 'This is a string value';
}

dynamic getAnotherValue() {
  return "123";
}
