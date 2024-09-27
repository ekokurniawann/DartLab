import 'dart:math';

void main() {
  // Inisialisasi set
  Set<int> numbers1 = {};
  var strings = <String>{};
  var doubles = <double>{};

  print(numbers1);
  print(strings);
  print(doubles);

  var numbers = <int>{1, 2, 3};
  print('Initial set: $numbers');

  // Menambah elemen ke dalam set
  numbers.add(4);
  numbers.add(2); // tidak akan di tambahkan karena 2 sudah ada
  print('Set setelah menambahkan 4 (dan 2 lagi): $numbers');

  // Menghapus elemen dari set
  numbers.remove(2);
  print('Set  setelah menghapus 2: $numbers');

  // Memeriksa keberadaan elemen
  if (numbers.contains(3)) {
    print('3 ada dalam set');
  } else {
    print('3 tidak ada dalam set');
  }

  // Operasi set: union
  var setA = {1, 2, 3};
  var setB = {3, 4, 5};
  print('setA: $setA');
  print('setB: $setB');
  var unionSet = setA.union(setB);
  print('Gabungan setA dan setB: $unionSet');

  // Operasi set : Intersection
  var intersectionSet = setA.intersection(setB);
  print('Irisan setA dan setB: $intersectionSet');

  // Operasi set : Difference
  var differenceSet = setA.difference(setB);
  print('Selisih setA dan setB: $differenceSet');

  // Mengonversi list menjadi set
  var list = [1, 2, 3, 3, 4];
  var uniqueSet = Set.from(list);
  print('Konversi dari list ke set: $uniqueSet');

  // Mengonversi set menjadi list
  var newList = uniqueSet.toList();
  print('Konversi dari set ke list: $newList');

  // Menyaring elemen set
  var evenNumbers = uniqueSet.where((number) => number.isEven);
  print('Bilangan genap dari set: $evenNumbers');

  // Null safety dengan set
  var nullableSet = <int?>{1, 2, null};
  print('Set dengan elemen nullbale: $nullableSet');

  // implement function getUniqueItems
  var result = getUniqueItems([1, 2, 2, 3, 4, 4, 5]);
  print('Elemen unik dari list yang diberikan: $result');
}

// fungsi untuk mengembalikan elemen unik dari list
Set<int> getUniqueItems(List<int> items) {
  return Set.from(items);
}
