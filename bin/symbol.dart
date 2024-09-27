void main() {
  // Deklarasi dan Inisialisasi Symbol
  Symbol symbol1 = #contoh;
  Symbol symbol2 = #contoh;

  // Menampilkan simbol
  print('Simbol 1: $symbol1');
  print('Simbol 2: $symbol2');

  // Memeriksa apakah simbol-simbol tersebut sama
  print('Apakah symbol1 dan symbol2 sama? ${symbol1 == symbol2}');

  // Menggunakan Symbol untuk Akses Fungsi Secara Dinamis
  void fungsiSaya() {
    print('Ini adalah fungsi saya.');
  }

  // Mendeklarasikan simbol untuk fungsi
  var fungsiSymbol = #fungsiSaya;

  // Memanggil fungsi menggunakan Function.apply
  Function.apply(fungsiSaya, []);

  // Menggunakan Symbol sebagai Kunci dalam Map
  Map<Symbol, String> simbolMap = {
    #kunci1: 'Nilai 1',
    #kunci2: 'Nilai 2',
  };

  // Menampilkan nilai dari Map menggunakan simbol
  print('Nilai dari Map untuk #kunci1: ${simbolMap[#kunci1]}');

  // Menambahkan dan Menghapus Simbol dalam Map
  simbolMap[#kunci3] = 'Nilai 3';
  print('Nilai dari Map untuk #kunci3: ${simbolMap[#kunci3]}');

  // Menghapus simbol
  simbolMap.remove(#kunci2);
  print('Map setelah menghapus #kunci2: $simbolMap');

  // Simbol untuk API Dinamis
  void aksesDinamis(Symbol simbol) {
    if (simbol == #kunci1) {
      print('Mengakses kunci1');
    } else if (simbol == #kunci2) {
      print('Mengakses kunci2');
    } else {
      print('Kunci tidak dikenal');
    }
  }

  // Memanggil fungsi dengan simbol
  aksesDinamis(#kunci1);
  aksesDinamis(#kunci2);
  aksesDinamis(#tidakDikenal);

  // Simbol dalam konteks dinamis
  void metodeDinamis(Symbol simbol) {
    switch (simbol) {
      case #satu:
        print('Ini adalah metode satu.');
        break;
      case #dua:
        print('Ini adalah metode dua.');
        break;
      default:
        print('Metode tidak dikenal.');
    }
  }

  // Memanggil metode dengan simbol
  metodeDinamis(#satu);
  metodeDinamis(#dua);
  metodeDinamis(#tiga);

  // Kesimpulan
  print(
      'Simbol adalah alat yang kuat untuk representasi nama unik dalam Dart.');
}
