void main() {
  // 1.Deklarasi variabel dengan tipe data eksplisit
  String name = 'Eko Kurniawan';
  int age = 25;
  bool isStudent = true;

  print('Nama: $name');
  print('Umur: $age');
  print('Apakah mahasiswa? $isStudent');

  // 2. Penggunaan 'var' untuk varibel yang tipe datanya di-infer otomatis
  var username = 'echo';
  var height = 175.5; // ini tipe nya double

  print('Username: $username');
  print('Tinggi: $height');

  // 3. final : nilai hanya bisa diinisialisasi sekali
  final firstName = 'Eko';
  final lastName = 'Kurniawan';

  print('Nama depan: $firstName');
  print('Nama belakang: $lastName');

  // Error : tidak bisa mengubah nilai final
  //firstName = 'Roger';

  // 4. const : nilai tetap yang di ketahui saat compile-time
  const pi = 3.14;
  const maxItems = 100;

  print('Pi: $pi');
  print('Max Items: $maxItems');

  // 5. final and const
  final currentTime = DateTime.now(); // final bisa di inisialisasi saat runtime
  // const compileTime = DateTime.now(); // Error : const harus di compile-time

  print('Waktu sekarang: $currentTime');

  // 6. late : inisialisasi variabel di tunda sampai di gunakan
  late String description;
  description = getDescription();
  print('Deskripsi: $description');

  // 7. tipe data list dan map
  List<int> numbers = [1, 2, 3, 4, 5];
  Map<String, String> user = {
    'name': 'Eko',
    'role': 'Software Enginer',
  };

  print('List numbers: $numbers');
  print('User info: ${user['name']}');

  // 8. scope variabel
  var globalVariable = 'Ini variable global';
  print(globalVariable);

  // local scope
  void localScope() {
    var localVariabel = 'Ini variabel lokal';
    print(localVariabel);
  }

  localScope();
  // print(localVariable) // Error : tidak bisa di akses di luar scope

  // 9. Mutability vs Immutability
  var mutableVariable = 'Bisa diubah';
  mutableVariable = 'Sudah diubah';

  final immutableVariable = 'Tidak bisa diubah';
  //immutableVariable = 'Error'; // Error : tidak bisa mengubah nilai final

  print('Mutable: $mutableVariable');
  print('Immutbale: $immutableVariable');
}

// fungsi untuk late inisialisasi
String getDescription() {
  print('getDescription() dipanggil');
  return 'Dart is awesome';
}
