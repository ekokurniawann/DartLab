void main() {
  // Membuat list
  List<int> numbers = [10, 20, 30, 40, 50];
  print('List dasar: $numbers');

  // Mengakses elemen berdasarkan index
  print('Elemen pertama: ${numbers[0]}');
  print('Elemen terkahir: ${numbers[numbers.length - 1]}');

  // Menambahkan elemen ke dalam list
  numbers.add(60);
  print('Setelah menambah 60: $numbers');

  // Menambahkan beberapa elemen sekaligus
  numbers.addAll([70, 80, 90]);
  print('Setelah menambah 70,80,90: $numbers');

  // Mengubah nilai elemen
  numbers[1] = 25;
  print('Setelah mengubah elemen kedua jadi 25: $numbers');

  // Menghapus elemen tertentu
  numbers.remove(25);
  print('Setelah menghapus 25: $numbers');

  // Menghapus elemen berdasarkan index
  numbers.removeAt(0);
  print('Setelah menghapus elemen pertama: $numbers');

  // Menghapus elemen terakhir
  numbers.removeLast();
  print('Setelah menghapus elemen terakhir: $numbers');

  // Memeriksa apakah elemen ada dalam list
  bool contains40 = numbers.contains(40);
  print('Apakah list mengandung 40? $contains40');

  // Mengurutkan list
  List<int> unsorted = [5, 2, 8, 1, 9];
  print('Sebelum di urutkan : $unsorted');
  unsorted.sort();
  print('Setelah di urutkan: $unsorted');

  // Filter elemen dengan where
  var filterred = unsorted.where((numbers) => numbers > 5).toList();
  print('Elemen lebih dari 5: $filterred');

  // Transformasi elemen dengan map
  var squares = unsorted.map((numbers) => numbers * numbers).toList();
  print('Kuadrat elemen: $squares');

  // Menggabungkan list dengan operator +
  List<String> fruits = ['Apple', 'Banana'];
  List<String> moreFruits = ['Orange', 'Grapes'];
  List<String> allFruits = fruits + moreFruits;
  print('Gabungan list buah: $allFruits');

  // Membalik urutan list
  List<int> reversedList = numbers.reversed.toList();
  print('List terbalik: $reversedList');

  // Menghitung total elemen dalam list dengan reduce
  int sum = numbers.reduce((a, b) => a + b);
  print('Total dari elemen dalam list: $sum');

  // Menggunakan forEach untuk iterasi
  print('Iterasi list dengan forEach:');
  allFruits.forEach((fruit) => print(fruit));

  // List bersarang (nested list)
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  print('List bersarang (matrix): $matrix');

  // Manipulasi list bersarang
  matrix[0][0] = 100; // Mengubah elemen di baris pertama kolom pertama
  print('Setelah mengubah matrix[0][0]: $matrix');

  // Menggunakan list dengan tipe dinamis (Heterogeneous list)
  List<dynamic> dynamicList = [1, 'dua', 3.0, true];
  print('List dinamis: $dynamicList');

  // Konversi list ke set (untuk menghilangkan duplikat)
  List<int> duplicates = [1, 2, 3, 2, 1, 4, 5, 3];
  Set<int> uniqueSet = duplicates.toSet();
  print('Konversi list ke set (menghilangkan duplikat): $uniqueSet');

  // Menggunakan spread operator (...) untuk gabung list
  List<int> combinedList = [...numbers, ...squares];
  print('Gabung list dengan spread operator: $combinedList');

  // List kosong dengan ukuran tetap
  List<int> fixedLengthList = List.filled(3, 0);
  print('Lis dengan ukuran tetap: $fixedLengthList');

  // List generate untuk menghasilkan elemen secara dinamis
  List<int> generatedList = List.generate(5, (index) => index * 2);
  print('List hasil generate: $generatedList');
}
