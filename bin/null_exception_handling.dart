void main() {
  // NullPointerexception sebelum null safety
  String? nullableString;
  // print(nullableString.length); // error

  // Solusi menggunakan null check
  if (nullableString != null) {
    print('Panjang string: ${nullableString.length}');
  } else {
    print('String adalah null');
  }

  // Menggunakan null-aware operator
  // `?.` untuk mengakses properti hanya jika bukan null
  // `??` untuk menyediakan nilai default jika null
  int? length = nullableString?.length ?? 0;
  print('Panjang string(dengan default): $length');

  // Null safety dengan non-nullable types
  // Dalam null safety, variabel yang non-nullable tidak bisa berisi null.
  // Ini akan mencegah NullPointerException di compile-time.
  String nonNullableString =
      'Golang is awesome!'; // intinya isi aja variabel nya ahaha
  print('Panjang nonNullableString: ${nonNullableString.length}');

  // Menggunakan null-aware assigment (??=)
  // Memberikan nilai default jika variable masih null
  nullableString ??= 'Default string';
  print('Nilai nullableString adalah null-aware assigment: $nullableString');

  // Kombinasi null safety dan null-aware operators (implement fungsi testNullSafety)
  testNullSafety(null);
  testNullSafety('Hello Golang');
}

void testNullSafety(String? input) {
  // Menggunakan null safety dalam fungsi
  // Menyediakan nilai default dengan null-coalescing operator(??)
  String safeInput = input ?? 'Default Value';
  print('Input yang di proses: $safeInput');
}
