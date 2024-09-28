void main() {
  // For loop dasar
  for (int i = 0; i < 5; i++) {
    print('Iterasi ke-$i');
  }

  // Iterasi melalui array
  print('\n=== Iterasi melalui array ==='); // hahaha array
  List<String> fruits = ['apel', 'jeruk', 'pisang'];
  for (int i = 0; i < fruits.length; i++) {
    print('Buah ke-$i: ${fruits[i]}');
  }

  // Looping mundur
  print('\n=== Looping mundur ===');
  for (int i = 5; i > 0; i--) {
    print('Iterasi ke-$i');
  }

  // For-Each loop
  print('\n=== For-Each loop ===');
  fruits.forEach(printFruit);

  // For loop bersarang
  print('\n=== For loop bersarang ===');
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 2; j++) {
      print('Iterasi i: $i, j: $j');
    }
  }

  // Menggunakan break
  print('\n=== Menggunakan break ===');
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      print('Loop dihentikan pada i = $i');
      break; // berhenti nih loop
    }
    print('Iterasi ke-$i');
  }

  // Menggunakan continue
  print('\n Menggunakan continue ===');
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // lewat nih kalau angka nya genap
    }
    print('Iterasi ke-$i');
  }
}

void printFruit(String fruit) {
  print('Buah: $fruit');
}
