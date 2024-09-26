void main() {
  bool isDartFun = true;
  bool isRaining = false;

  print('Is dart fun? $isDartFun');
  print('Is it raining? $isRaining');

  // operasi perbandingan
  int a = 10;
  int b = 20;

  bool isEqual = (a == b); // Apakah a sama dengan b ?
  bool isNotEqual = (a != b); // Apakah a tidak sama dengan b ?
  bool isGreater = (a > b); // Apakah a lebih besar dari b?
  bool isLessOrEqual = (a <= b); // Apakah a lebih kecil atau sama dengan b?

  print('Apakah a sama dengan b? $isEqual');
  print('Apakah a tidak sama dengan b?$isNotEqual');
  print('Apakah a lebih besar dari b? $isGreater');
  print('Apakah a lebih kecil atau sama dengan b? $isLessOrEqual');

  // operator logika
  bool condition1 = (a < b);
  bool condition2 = (a > 5);

  bool andCondition = condition1 && condition2;
  bool orCondition = condition1 || condition2;
  bool notCondition = !condition1;

  print('Hasil dari AND: $andCondition');
  print('Hasil dari OR: $orCondition');
  print('Hasil dari NOT: $notCondition');

  // while loop
  int count = 0;
  while (count < 3) {
    print('Count adalah $count');
    count++;
  }

  // boolean dalam fungsi
  print('Apakah 4 bilangan genap? ${isEven(4)}');
  print('Apakah 7 bilangan genap? ${isEven(7)}');

  bool complexCondition = (a > 5) && (b > 10) && !(b > 30);
  print(
      'Apakah a > 5, b > 10, dan b tidak lebih besar dari 30? $complexCondition');
}

bool isEven(int number) {
  return number % 2 == 0;
}
