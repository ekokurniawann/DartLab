void main() {
  int a = 10;
  int b = 20;
  double c = 10.0;
  String str = "20";
  bool isActive = true;
  bool isLoggedIn = false;

  // Operator Sama dengan (==)
  print("Operator Sama dengan (==)");
  print("a == 10: ${a == 10}");
  print("b == 20: ${b == 20}");
  print("c == 10.0: ${c == 10.0}");
  print("str == '20': ${str == '20'}");

  // Operator Tidak sama dengan (!=)
  print("\nOperator Tidak sama dengan (!=)");
  print("a != b: ${a != b}");
  print("b != 20: ${b != 20}");
  print("c != 10.0: ${c != 5.0}");
  print("str != '10': ${str != '10'}");

  // Operator Lebih besar dari (>)
  print("\nOperator Lebih besar dari (>)");
  print("a > b: ${a > b}");
  print("b > a: ${b > a}");
  print("c > a: ${c > a}");

  // Operator Lebih kecil dari (<)
  print("\nOperator Lebih kecil dari (<)");
  print("a < b: ${a < b}");
  print("b < a: ${b < a}");
  print("c < b: ${c < b}");

  // Operator Lebih besar atau sama dengan (>=)
  print("\nOperator Lebih besar atau sama dengan (>=)");
  print("a >= 10: ${a >= 10}");
  print("b >= 20: ${b >= 20}");
  print("c >= 10: ${c >= 10}");

  // Operator Lebih kecil atau sama dengan (<=)
  print("\nOperator Lebih kecil atau sama dengan (<=)");
  print("a <= 10: ${a <= 10}");
  print("b <= 15: ${b <= 15}");
  print("c <= 10: ${c <= 10}");

  // Menggunakan Operator Perbandingan dalam Kondisi
  print("\nMenggunakan Operator Perbandingan dalam Kondisi");
  if (a < b) {
    print("a kurang dari b");
  } else {
    print("a tidak kurang dari b");
  }

  if (c >= a) {
    print("c sama dengan atau lebih besar dari a");
  }

  // Contoh perbandingan string dengan integer
  print("\nPerbandingan String dan Integer");
  int numericValue = int.parse(str);
  print("str == numericValue.toString(): ${str == numericValue.toString()}");
  print("numericValue > a: ${numericValue > a}");

  // Penggunaan dalam Logika
  print("\nMenggunakan Operator Perbandingan dalam Logika");
  if (isActive && (a < b)) {
    print("Pengguna aktif dan a kurang dari b");
  }

  if (!isLoggedIn) {
    print("Pengguna tidak masuk atau b lebih besar dari a");
  }

  // Penggunaan dalam loop
  print("\nPenggunaan dalam Loop");
  for (int i = 0; i < 5; i++) {
    print("Iteration: $i");
  }

  // Menggunakan do-while loop
  int count = 0;
  do {
    print("Count in do-while: $count");
    count++;
  } while (count < 3);
}
