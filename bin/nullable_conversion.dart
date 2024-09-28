void main() {
  // Konversi nullable ke non-nullable

  // Menggunakan null assertion operator (!)
  int? nullableValue = 42;
  // Null assertion: Konversi nullable ke non-nullable secara paksa
  int nonNullableValue = nullableValue!;
  print("Nilai non-nullable (assertion): $nonNullableValue");

  // Mengubah variabel nullable menjadi null
  nullableValue = null;

  // Menggunakan null-coalescing operator (??)
  // Gunakan nilai fallback jika variabel nullable bernilai null
  int safeNonNullableValue = nullableValue ?? 0; // Fallback ke 0 jika null
  print("Nilai non-nullable (coalescing): $safeNonNullableValue");

  // Menggunakan conditional check sebelum konversi
  nullableValue = 100;
  if (nullableValue != null) {
    // Dart tahu bahwa nullableValue tidak null di dalam blok ini
    int checkedNonNullableValue = nullableValue; // Konversi aman
    print("Nilai non-nullable (conditional check): $checkedNonNullableValue");
  }

  // Konversi Non-Nullable ke Nullable

  //  Konversi langsung dari non-nullable ke nullable
  int nonNullableInt = 20;
  int? nullableAgain =
      nonNullableInt; // Non-nullable otomatis bisa menjadi nullable
  print("Nilai nullable: $nullableAgain");

  // Konversi Secara Paksa (Forceful Conversion)

  //  Konversi secara paksa dari nullable ke non-nullable tanpa cek (berbahaya)
  int? nullableForce;
  try {
    // Ini akan memicu exception karena nullableForce bernilai null.
    int forcedNonNullable = nullableForce!; // Potensi error
    print("Forced non-nullable: $forcedNonNullable");
  } catch (e) {
    print("Error saat konversi secara paksa: $e");
  }

  // Null assertion tanpa error jika nilai tidak null
  nullableForce = 50;
  int safeForcedNonNullable = nullableForce!; // Aman karena tidak null
  print("Safe forced non-nullable: $safeForcedNonNullable");

  // Konversi nullable secara dinamis

  //  Menggunakan cast dengan as (jika tipe diketahui)
  dynamic someValue = nullableForce; // Nullable
  int? dynamicNullable = someValue as int?; // Konversi dinamis ke nullable
  print("Dynamic nullable: $dynamicNullable");

  // Menggunakan Late Variable untuk Inisialisasi Terlambat
  late int lateNonNullable;

  try {
    // Variabel 'late' harus diinisialisasi sebelum digunakan, jika tidak akan menyebabkan LateInitializationError
    lateNonNullable =
        nullableForce!; // Akan error jika nullableForce adalah null
    print("Late initialized non-nullable: $lateNonNullable");
  } catch (e) {
    print("Error pada late initialization: $e");
  }

  // Inisialisasi late variable dengan nilai non-nullable
  lateNonNullable = 70; // Memberikan nilai non-nullable
  print("Late initialized non-nullable after assignment: $lateNonNullable");
}
