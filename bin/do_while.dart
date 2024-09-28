import 'dart:io';

void main() {
  // Contoh Dasar
  print('=== Contoh Dasar ===');
  int i = 0;

  // Perulangan do-while dasar: menampilkan nilai iterasi
  do {
    print('Iterasi: $i');
    i++;
  } while (i < 3); // Kondisi perulangan, berhenti ketika i mencapai 3
  print('Perulangan selesai. Nilai i sekarang: $i\n');

  // Contoh Penggunaan Kondisi Lebih Spesifik
  print('=== Penggunaan Kondisi ===');
  int x = 10;

  // Perulangan do-while dengan kondisi yang lebih spesifik: mengurangi nilai x
  do {
    print('Nilai x: $x');
    x -= 2;
  } while (x > 0); // Berhenti ketika x kurang dari atau sama dengan 0
  print('Perulangan selesai. Nilai x sekarang: $x\n');

  // Contoh Input Pengguna
  print('=== Input Pengguna ===');
  String userInput;

  // Perulangan do-while berdasarkan input pengguna: berhenti ketika pengguna mengetik "exit"
  do {
    stdout.write('Masukkan sebuah kata (ketik "exit" untuk berhenti): ');
    userInput = stdin.readLineSync()!;
    print('Anda memasukkan: $userInput');
  } while (userInput != 'exit'); // Berhenti ketika input adalah "exit"
  print('Perulangan selesai. Anda telah mengetik "exit".\n');

  // Contoh Game Sederhana: Tebak Angka
  print('=== Game Sederhana: Tebak Angka ===');
  int lives = 3;
  int correctAnswer = 42;
  int guessedNumber;

  // Permainan tebak angka: pemain memiliki kesempatan menebak sampai nyawa habis atau jawaban benar
  do {
    stdout.write('Tebak angka antara 1 dan 50 (nyawa tersisa: $lives): ');
    guessedNumber = int.parse(stdin.readLineSync()!);

    if (guessedNumber == correctAnswer) {
      print('Selamat! Tebakan Anda benar.');
      break; // Keluar dari perulangan jika pemain menebak dengan benar
    } else {
      lives--;
      if (lives > 0) {
        print('Tebakan salah, coba lagi!');
      } else {
        print('Game over! Nyawa habis.');
      }
    }
  } while (lives > 0); // Perulangan berakhir ketika nyawa habis
  print('Permainan selesai.\n');
}
