void main() {
  // Operator Penugasan Aritmatika
  int a = 10;
  int b = 5;

  // Penugasan Penjumlahan
  a += b; // a = a + b; (15)
  print('Nilai a setelah penugasan penjumlahan: $a');

  // Penugasan Pengurangan
  a -= 3; // a = a - 3; (12)
  print('Nilai a setelah penugasan pengurangan: $a');

  // Penugasan Perkalian
  a *= 2; // a = a * 2; (24)
  print('Nilai a setelah penugasan perkalian: $a');

  // Penugasan Pembagian Bulat
  a ~/= 4; // a = a ~/ 4; (6)
  print('Nilai a setelah penugasan pembagian bulat: $a');

  // Penugasan Modulus
  a %= 5; // a = a % 5; (1)
  print('Nilai a setelah penugasan modulus: $a');

  // Operator Increment dan Decrement
  int x = 10;
  int y;

  // Prefix Increment
  y = ++x; // x menjadi 11, y menjadi 11
  print('Nilai x setelah prefix increment: $x');
  print('Nilai y setelah prefix increment: $y');

  // Postfix Increment
  y = x++; // y menjadi 11, x menjadi 12
  print('Nilai x setelah postfix increment: $x');
  print('Nilai y setelah postfix increment: $y');

  // Prefix Decrement
  y = --x; // x menjadi 11, y menjadi 11
  print('Nilai x setelah prefix decrement: $x');
  print('Nilai y setelah prefix decrement: $y');

  // Postfix Decrement
  y = x--; // y menjadi 11, x menjadi 10
  print('Nilai x setelah postfix decrement: $x');
  print('Nilai y setelah postfix decrement: $y');

  // Menunjukkan penggunaan operator penugasan lainnya
  int z = 15;

  // Penugasan Bitwise
  z &= 3; // z = z & 3;
  print(
      'Nilai z setelah penugasan bitwise AND: $z'); // Hasil tergantung pada nilai biner

  z |= 2; // z = z | 2;
  print('Nilai z setelah penugasan bitwise OR: $z');

  z ^= 1; // z = z ^ 1;
  print('Nilai z setelah penugasan bitwise XOR: $z');

  z <<= 1; // z = z << 1;
  print('Nilai z setelah penugasan bitwise left shift: $z');

  z >>= 1; // z = z >> 1;
  print('Nilai z setelah penugasan bitwise right shift: $z');
}
