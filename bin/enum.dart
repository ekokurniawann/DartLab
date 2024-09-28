// Simple enum declaration
enum Warna { merah, hijau, biru }

void main() {
  // Menggunakan simple enum
  final warnaFavorit = Warna.biru;

  if (warnaFavorit == Warna.biru) {
    print('Warna favoritmu adalah biru!');
  }

  // Mendapatkan index dari setiap enum value
  assert(Warna.merah.index == 0);
  assert(Warna.hijau.index == 1);
  assert(Warna.biru.index == 2);

  // Mengakses semua nilai enum
  List<Warna> daftarWarna = Warna.values;
  assert(daftarWarna[2] == Warna.biru);

  // Menggunakan enum dalam switch statement
  var warna = Warna.biru;
  switch (warna) {
    case Warna.merah:
      print('Merah seperti mawar!');
      break;
    case Warna.hijau:
      print('Hijau seperti rumput!');
      break;
    case Warna.biru:
      print('Biru seperti langit!');
      break;
  }

  // Enhanced enum declaration
  print('\nContoh Enum yang Ditingkatkan:');
  print('Mobil memiliki jejak karbon: ${Kendaraan.mobil.jejakKarbon}');
  print('Bus memiliki jejak karbon: ${Kendaraan.bus.jejakKarbon}');
  print('Sepeda memiliki dua roda: ${Kendaraan.sepeda.berodaDua}');

  // Menggunakan factory constructor dalam enum
  final statusDariServer = 'dilarang';
  final status = StatusAkun.fromString(statusDariServer);
  print('\nStatus Akun: ${status.deskripsi}');
}

// Enhanced enum example with fields, methods, and constructor
enum Kendaraan implements Comparable<Kendaraan> {
  mobil(ban: 4, penumpang: 5, karbonPerKilometer: 400),
  bus(ban: 6, penumpang: 50, karbonPerKilometer: 800),
  sepeda(ban: 2, penumpang: 1, karbonPerKilometer: 0);

  const Kendaraan({
    required this.ban,
    required this.penumpang,
    required this.karbonPerKilometer,
  });

  final int ban;
  final int penumpang;
  final int karbonPerKilometer;

  // Menghitung jejak karbon per penumpang
  int get jejakKarbon => (karbonPerKilometer / penumpang).round();

  // Memeriksa apakah kendaraan beroda dua
  bool get berodaDua => this == Kendaraan.sepeda;

  // Membandingkan kendaraan berdasarkan jejak karbon
  @override
  int compareTo(Kendaraan lainnya) => jejakKarbon - lainnya.jejakKarbon;
}

// Enhanced enum with factory constructor
enum StatusAkun {
  terkunci(value: 'terkunci', deskripsi: 'Akun Anda terkunci'),
  dilarang(value: 'dilarang', deskripsi: 'Dilarang dari sistem'),
  menunggu(value: 'menunggu', deskripsi: 'Status Anda sedang ditinjau'),
  aktif(value: 'aktif', deskripsi: 'Anda tidak memiliki batasan'),
  tidakDiketahui(value: 'tidak_diketahui', deskripsi: 'Status tidak diketahui');

  const StatusAkun({
    required this.value,
    required this.deskripsi,
  });

  final String value;
  final String deskripsi;

  // Factory constructor untuk mengembalikan enum berdasarkan string
  factory StatusAkun.fromString(String status) {
    return StatusAkun.values.firstWhere(
      (el) => el.value == status,
      orElse: () => StatusAkun.tidakDiketahui,
    );
  }
}
