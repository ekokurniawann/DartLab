void main() {
  // Deklarasi variabel
  String name;
  name = 'Eko kurniawan';

  // Deklarasi langsung
  String username = 'echo';

  // Keyword var
  var age = 18;

  print(name);
  print(username);
  print(age);

  // final
  var firtsName = 'Eko';
  final lastName = 'Kurniawan';

  print(firtsName);
  print(lastName);

  // const
  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];

  print(array1);
  print(array2);

  late var value = getValue();
  print('Variable sudah dibuat');
  print(value);
}

String getValue() {
  print('getValue() dipanggil');
  return 'Eko kurniawan';
}
