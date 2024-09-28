void main() {
  // Tipe nullable dan non-nullable
  int nonNullableInt = 42;
  int? nullableInt;

  print('Nullable int: $nullableInt');

  // Mengubah nilai nullableInt
  nullableInt = 10;
  print('Nullable int setelah diubah: $nullableInt');

  // Operator null-aware
  String? name;
  String displayName =
      name ?? 'Guest'; // Menggunakan operator ?? untuk memberikan nilai default
  print('Nama pengguna: $displayName');

  // Operator null-aware untuk mengakses properti
  String? message;
  print(message?.toUpperCase() ?? 'Tidak ada pesan');

  // Null Assertion Operator (!)
  // Jika value adalah null, ini akan menyebabkan exception.
  nullableInt = 20;
  print('Nullable Int dengan null assertion: ${nullableInt!}');

  // Late initialization
  late String lateInitializedString;
  lateInitializedString = 'Dart Programming';
  print('Late initialized String: $lateInitializedString');

  // Fungsi yang mengembalikan nullable
  int? findValue(int index) {
    List<int> numbers = [1, 2, 3];
    if (index < numbers.length) {
      return numbers[index];
    }

    return null;
  }

  int? value = findValue(2);
  print('Nilai yang ditemukan: ${value ?? 'Tidak ditemukan'}');

  // Manipulasi null dalam list
  List<String?> items = ['Apple', null, 'Banana', null, 'Cherry'];
  for (var item in items) {
    print('Item: ${item ?? 'Tdak ada item'}');
  }

  // Implement kelas User
  User user1 = User('Alice', null);
  print('User: ${user1.name}, Age: ${user1.age ?? 'Tidak diketahui'}');

  // Menggunakan null dalam map
  Map<String, String?> userProfiles = {
    'user1': 'Roger',
    'user2': 'Zilong',
    'user3': null,
  };

  userProfiles.forEach((key, value) {
    print('$key: ${value ?? 'Tidak ada profile'}');
  });
}

// Menggunakan null safety dalam kelas
class User {
  String name;
  int? age;

  User(this.name, this.age);
}
