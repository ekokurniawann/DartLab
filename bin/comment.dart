/// Program ini menunjukkan penggunaan berbagai jenis komentar di Dart.
void main() {
  // Komentar baris tunggal
  print('Hello, Dart!'); // Ini adalah komentar di akhir baris

  /*
   Komentar multiline ini dapat mencakup beberapa baris.
   Misalnya, jika kita ingin menjelaskan logika di bawah ini.
  */
  int a = 5;
  int b = 10;
  int sum = a + b;

  // Menampilkan hasil penjumlahan
  print('The sum of $a and $b is: $sum');

  // Fungsi untuk menggandakan nilai
  print(doubleValue(4)); // Memanggil fungsi doubleValue dengan argumen 4
}

/// Menggandakan nilai yang diberikan.
///
/// Fungsi ini menerima parameter [value] dan mengembalikan dua kali lipat dari nilai tersebut.
int doubleValue(int value) {
  return value * 2; // Menggandakan nilai
}
