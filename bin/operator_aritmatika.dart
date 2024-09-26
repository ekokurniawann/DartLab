void main() {
  int a = 10;
  int b = 5;
  double c = 3.5;

  // Penjumlahan
  int sum = a + b;
  print('Hasil penjumlahan: $sum');

  // Pengurangan
  int difference = a - b;
  print('Hasil perkalian: $difference');

  // Perkalian
  int product = a * b;
  print('Hasil perkalian: $product');

  // Pembagian
  double division = a / b;
  print('Hasil pembagian bulat: $division');

  // Pembagian bulat
  int integerDivision = a ~/ b;
  print('Hasil pembagian bulat: $integerDivision');

  // Modulus
  int modulus = a % b;
  print('Sisa hasil bagi: $modulus');

  // Kombinasi operator aritmatika
  int combinedResult = a + b * 2;
  print('Hasil kombinasi: $combinedResult');

  // Operator penugasan aritmatika
  a += 5; // a = a + 5
  print('Hasil penugasan penjumlahan: $a');

  a -= 3;
  print('Hasil penugasan pengurangan: $a');

  a *= 2;
  print('Hasil penugasan perkalian: $a');

  a ~/= 3;
  print('Hasil penugasan pembagian bulat: $a');

  a %= 3;
  print('Hasil penugasan modulus: $a');

  // Menggunakan double dalam operasi
  double doubleResult = c * 2;
  print('Hasil perkalian double: $doubleResult');

  // Menggabungkan int dan double
  double mixedResult = a + c;
  print("Hasil penggabungan int dan double: $mixedResult");

  // Kombinasi semua operator dalam satu ekspresi
  double complexExpression = (a + b) * c - (10 / 2);
  print('Hasil ekspresi kompleks: $complexExpression');
}
