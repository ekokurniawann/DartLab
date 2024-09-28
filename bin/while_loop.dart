import 'dart:io';

void main() {
  // While loop untuk menghitung dari 0 hingga 4
  int count = 0;

  while (count < 5) {
    print('Count: $count');
    count++; // Meningkatkan nilai count
  }

  // While loop untuk input pengguna
  String input = '';

  while (input != 'exit') {
    print('Masukan perintah (ketik "exit" untuk keluar):');
    input = stdin.readLineSync() ?? ''; // Membaca input dari pengguna
    print('Anda memasukan: $input');
  }

  // Infinite loop dengan break
  int infiniteCount = 0;

  while (true) {
    if (infiniteCount == 10) {
      print('Keluar dari infinite loop setelah 10 iterasi');
      break;
    }
    print('Inifinite Count: $infiniteCount');
    infiniteCount++;
  }

  // Menghitung bilangan genap
  int number = 10;

  while (number <= 20) {
    if (number % 2 == 0) {
      print('Bilangan genap: $number');
    }
    number++;
  }

  // While loop untuk daftar buah ahahha
  List<String> fruits = ['Apel', 'Pisang', 'Jeruk', 'Mangga'];
  int index = 0;

  while (index < fruits.length) {
    print('Buah: ${fruits[index]}');
    index++;
  }

  // While loop dengan validasi input
  int age = -1;

  while (age < 0 || age > 120) {
    print('Masukkan usia Anda (0-120):');
    String? inputAge = stdin.readLineSync();
    age = int.tryParse(inputAge ?? '') ?? -1; // Mengonversi input ke integer

    if (age < 0 || age > 120) {
      print('Usia tidak valid. Silakan coba lagi.');
    }
  }

  print('Usia Anda: $age');
}
