void main() {
  // Penggunaan ternary operator
  int a = 10;
  int b = 20;

  // menentukan nilai maksimum
  int max = a > b ? a : b;
  print('Nilai maksimum antara $a dan $b adalah $max');

  //menentukan genap atau ganjil
  String parity = a % 2 == 0 ? 'Genap' : 'Ganjil';
  print('$a adalah bilangan $parity');

  // Contoh dengan lebih dari dua hasil
  String description = (a > b)
      ? 'a lebih besar dari b'
      : (a < b)
          ? 'a lebih kecil dari b'
          : 'a sama dengan b';
  print(description);

  // manipulasi dengan operator ternary
  String name = 'Roger';
  String greeting = name.isNotEmpty ? 'Helo, $name' : 'Hello, Stranger!';
  print(greeting);

  // operator ternary dalam fungsi
  String checkScore(int score) {
    return score >= 60 ? 'Lulus' : 'Tidak Lulus';
  }

  print('Nilai 75: ${checkScore(75)}');
  print('Nilai 55: ${checkScore(55)}');

  // ternary operator bersarang
  int grade = 85;
  String result = grade >= 90
      ? 'A'
      : grade >= 80
          ? 'B'
          : grade >= 60
              ? 'D'
              : 'E';

  print('Nilai: $grade, Grade: $result');

  // ternary operator dalam list
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> numberDescriptions =
      numbers.map((n) => n % 2 == 0 ? 'Genap' : 'Ganjil').toList();

  print('Deskripsi angka: $numberDescriptions');
}
