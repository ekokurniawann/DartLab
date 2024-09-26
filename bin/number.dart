import 'package:complex/complex.dart';

void main() {
// int
  int integerValue1 = 42; //positif
  int integerValue2 = -10; // negatif

  int integerSum = integerValue1 + integerValue2;
  print('Penjumlahan int: $integerValue1 + $integerValue2 = $integerSum');

  // double
  double doubleValue1 = 3.14;
  double doubleValue2 = -2.5;

  double doubleSUm = doubleValue1 + doubleValue2;
  print('Penjumlahan double: $doubleValue1 + $doubleValue2 = $doubleSUm');

  // num
  num numValue1 = 100;
  num numValue2 = 10.5;

  num numSum = numValue1 + numValue2;
  print('Penjumlahan num: $numValue1 + $numValue2 = $numSum');

  num mixedNum1 = 3; // int
  num mixedNum2 = 4.75; // double

  print(
      'Hasil Penjumlahan num campuran: $mixedNum1 + $mixedNum2 = ${mixedNum1 + mixedNum2}');

  // Casting dan konversi
  double numToDouble = numValue1.toDouble();
  print('Casting num ke double: $numValue1 sebagai double = $numToDouble');

  int doubleToInt = doubleValue1.toInt();
  print('Casting double ke int: $doubleValue1 sebagai int = $doubleToInt');

  // float32 dan float64 tidak ada di Dart, tapi kita bisa menunjukkan
  // penggunaan double untuk bilangan pecahan yang lebih besar.
  double largeFloatValue = 1.7976931348623157e+308; // float64 max
  print('Nilai float terbesar di Dart (double): $largeFloatValue');

  double smallFloatValue = 5e-324; // float64 min
  print('Nilai float terkecil di Dart (double): $smallFloatValue');

  // Tidak ada tipe data kompleks di Dart, tapi kita bisa menggunakan library `complex`
  var complexValue = Complex(1, 2);

  print('Contoh bilangan kompleks: $complexValue');
}
