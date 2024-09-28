void main() {
  // Penggunaan null-coalescing operator (??)
  String? username; // Variable username awalnuya null
  String displayName = username ?? 'Pengguna Tamu'; // Menggunakan nilai default
  print(displayName);

  // Memberikan nilai pada username
  username = 'Alice';
  displayName = username ?? 'Pengguna Tamu'; // Sekarang username tidak null
  print(displayName);

  // Penggunaan null-aware assigment operator (??=)
  String? email;
  email ??= 'tidak ada email'; // Mengassign nilai hanya jika email null
  print(email);

  // Mengassign nilai lagi, tetapi tidak akan mengubah email karena sudah ada nilai
  email ??= 'alice@gmail.com'; // tidak ada perubahan
  print(email);

  // Menggunakan kedua operator
  String? userName;
  String? preferredName;

  // null-coalescing operator
  String finalName = preferredName ?? userName ?? 'Pengguna Tamu';
  print(finalName);

  // Memberikan nilai pada userName
  userName = 'Roger';
  finalName = preferredName ?? userName ?? 'Pengguna Tamu';
  print(finalName);

  // Memberikan nilai pada preferredName
  preferredName = 'Sumatera';
  finalName = preferredName ?? userName ?? 'Pengguna Tamu';
  print(finalName);

  // Manipulasi dengna list dan null-aware operator
  List<String?> users = ['Alice', null, 'Charlie', null];
  for (var user in users) {
    // Menggunakan null-coalescing untuk memberikan nama default
    String displayUser = user ?? 'Pengguna Tamu';
    print(displayUser);
  }

  // penggunaan null-aware assignment untuk inisialisasi dalam loop
  for (int i = 0; i < users.length; i++) {
    users[i] ??= 'Pengguna Baru'; // Mengassign nilai hanya jika null
  }

  print(users);
}
