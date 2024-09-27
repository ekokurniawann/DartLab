void main() {
  // Menggunakan switch untuk menentukan hari
  String hari = "Rabu";

  switch (hari) {
    case "Senin":
      print("Hari ini adalah Senin. Waktunya kerja.");
      break;
    case "Selasa":
      print("Hari ini adalah Selasa. Ada rapat di siang hari.");
      break;
    case "Rabu":
      print("Hari ini adalah Rabu. Belajar pemrograman Dart.");
      break;
    case "Kamis":
      print("Hari ini adalah Kamis. Waktunya berolahraga.");
      break;
    case "Jumat":
      print("Hari ini adalah Jumat. Siap untuk akhir pekan.");
      break;
    case "Sabtu":
      print("Hari ini adalah Sabtu. Waktunya bersantai.");
      break;
    case "Minggu":
      print("Hari ini adalah Minggu. Waktunya berkumpul dengan keluarga.");
      break;
    default:
      print("Hari tidak valid.");
  }

  // Menggunakan switch untuk menentukan bulan
  int bulan = 5;

  switch (bulan) {
    case 1:
      print("Januari");
      break;
    case 2:
      print("Februari");
      break;
    case 3:
      print("Maret");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("Mei");
      break;
    case 6:
      print("Juni");
      break;
    case 7:
      print("Juli");
      break;
    case 8:
      print("Agustus");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("Oktober");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("Desember");
      break;
    default:
      print("Bulan tidak valid.");
  }

  // Menggunakan switch dengan ekspresi kombinasi
  String grade = "A";

  switch (grade) {
    case "A":
      print("Anda mendapatkan nilai A, kerja bagus!");
      break;
    case "B":
      print("Anda mendapatkan nilai B, terus tingkatkan!");
      break;
    case "C":
      print("Anda mendapatkan nilai C, perlu perbaikan.");
      break;
    case "D":
      print(
          "Anda mendapatkan nilai D, pertimbangkan untuk belajar lebih keras.");
      break;
    case "F":
      print("Anda mendapatkan nilai F, silakan ambil ulang.");
      break;
    default:
      print("Nilai tidak valid.");
  }

  // switch dengan fall-through
  String cuaca = "Hujan";

  switch (cuaca) {
    case "Cerah":
      print("Cuaca cerah, mari beraktivitas di luar!");
      break;
    case "Hujan":
      print("Cuaca hujan.");
    // Fall-through: tidak ada break, lanjut ke case berikutnya
    case "Hujan Deras":
      print("Bawa payung!");
      break;
    default:
      print("Cuaca tidak terduga.");
  }
}
