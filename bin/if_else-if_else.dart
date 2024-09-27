void main() {
  // If-else dasar
  int umur = 20;

  if (umur > 18) {
    print('And sudah dewasa');
  } else {
    print('Anda belum dewasa');
  }

  // If-else if
  if (umur < 18) {
    print('And masih dibawah umur');
  } else if (umur < 60) {
    print('Anda sudah dewasa');
  } else {
    print('Anda sudah lansia');
  }

  // If-else dengan operasi logika
  bool mahasiswa = true;
  bool kartuDiskon = false;

  if (mahasiswa && kartuDiskon) {
    print('Anda berhak mendapatkan diskon');
  } else if (mahasiswa || kartuDiskon) {
    print('Anda mungkin berhak mendapatkan diskon sebagian');
  } else {
    print('Anda tidak berhak mendapatkan diskon');
  }

  // If-else dengan string dan null
  String? nama = "Budi";

  if (nama != null && nama.isNotEmpty) {
    print('Halo, $nama');
  } else {
    print('Nama tidak tersedia');
  }

  // If-else dengan type check
  dynamic input = 42;

  if (input is int) {
    print('Input adalah sebuah angka');
  } else if (input is String) {
    print('Input adalah sebuah teks');
  } else {
    print('Input memiliki tipe yang tidak diketahui');
  }

  // If-Else kompleks dengan fungsi
  double hitungDiskon(double harga, String tipePelanggan) {
    if (tipePelanggan == 'reguler') {
      return harga * 0.05; // Diskon 5% untuk pelanggan reguler
    } else if (tipePelanggan == 'vip') {
      return harga * 0.15; // Diskon 15% untuk pelanggan VIP
    } else if (tipePelanggan == 'staf') {
      return harga * 0.25; // Diskon 25% untuk staf
    } else {
      return 0.0; // Tidak ada diskon
    }
  }

  double harga = 100.0;
  String tipePelanggan = 'vip';
  double diskon = hitungDiskon(harga, tipePelanggan);
  print(
      "Tipe pelanggan: $tipePelanggan, Diskon: Rp${diskon.toStringAsFixed(2)}");

  // If-Else dengan Ternary Operator
  String keanggotaan = "vip";
  String tingkatAkses = keanggotaan == "vip" ? "Akses Penuh" : "Akses Terbatas";
  print("Tipe keanggotaan: $keanggotaan, Tingkat akses: $tingkatAkses");

  // If-Else dengan Nested Conditions
  int suhu = 25;

  if (suhu > 30) {
    print("Cuaca sangat panas.");
  } else {
    if (suhu >= 20 && suhu <= 30) {
      print("Cuaca hangat.");
    } else if (suhu >= 10 && suhu < 20) {
      print("Cuaca sedikit dingin.");
    } else {
      print("Cuaca dingin.");
    }
  }
}
