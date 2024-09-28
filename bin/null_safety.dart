void main() {
  // Non-nullable by default
  int nonNullableInt = 10; // tidak bisa null karena dia non-nullable ahahah
  print('Non-nullable int: $nonNullableInt');

  // Nullable types(T?)
  int? nullableInt; // Bisa null karena dibuat ahaha
  print('Nullable int: $nullableInt');

  // Memberi nilai kepada nullable
  nullableInt = 20;
  print('Nullable int setelah diubah: $nullableInt');

  // Null assertion
  int? nullableValue = 30;
  int nonNullableValue =
      nullableValue!; // memastikan tidak null (ngapain kan kita udah tau bahwasannya nggak nul ahaha)
  print('Nilai yang dipastikan non-null: $nonNullableValue');

  // Null-aware operators (?? dan ??=)
  int? anotherNullableInt;

  // Menggunakan ?? untuk memberikan nilai default jika null
  int intWithFallback = anotherNullableInt ?? 5;
  print('Nullable dengan fallback menggunakan ?? : $intWithFallback');

  // Menggunakan  ??= untuk menetapkan nilai jika null
  anotherNullableInt ??=
      15; // anotherNullableInt sebelumnya null, jadi ini akan menjadi 15 (lah kalo gitu kenapa nggak di isi aja dari awal ahahaa)
  print('Nullable setelah menggunakan ??= : $anotherNullableInt');

  // Null-aware method calls
  String? nullableString;

  // nullableString = 'Hello gaes';

  // Menggunakan null-aware method call (?.) untuk menghindari error jika null (kaget banget nih)
  // print(nullableString.toLowerCase()); // nggak error
  print(nullableString?.toLowerCase() ?? 'String null, menggunakan default');

  // Nullable collections
  List<int?> nullableList = [
    1,
    null,
    3
  ]; // List yang mengizinkan null (karean di izinkan ahahha)
  for (var element in nullableList) {
    print('Element in nullable list: $element');
  }

  // Safe casting dengan 'as?'
  dynamic unknownValue = 'Dart Programming';
  String? castedString = unknownValue as String?;
  print('Casted string: $castedString Type: ${castedString.runtimeType}');

  // Late with non-nullable promises
  late final DateTime
      currentTime; // Harus diinisisalsi sebelum digunakan (karena non-nullable ahahaha)
  if (DateTime.now().hour > 12) {
    currentTime = DateTime.now();
  } else {
    currentTime = DateTime.utc(2024, 9, 28);
  }
  print('Late variable with final keyword: $currentTime');

  // Using null-aware operators for conditional expressions
  String? name;

  String greeting =
      'Hello, ${name ?? 'Guest'}!'; // Menggunakan ?? untuk conditional (biar sederhana aja)
  print(greeting);

  Person? person = Person(firstName: null, lastName: 'Roger');
  String fullName =
      '${person.firstName ?? "Unknown"} ${person.lastName ?? "Unknown"}';
  print('Full Name: $fullName');
}

// Complex use case: Handling nullable and non-nullable together
// Nullable class
class Person {
  String? firstName;
  String? lastName;

  Person({this.firstName, this.lastName});
}
