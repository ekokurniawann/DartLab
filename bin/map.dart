void main() {
  // Dekrlasi dan inisialisasi map
  Map<String, String> map1 = {};

  Map<String, int> scores = {
    'Alice': 90,
    'Roger': 80,
    'Charlie': 70,
  };

  print('Scores awal: $scores\n');

  // Menambah elemen map
  scores['David'] = 85;
  print('Setelah menambah David: $scores');

  // Mengakses elemen map
  int aliceScore = scores['Alice'] ?? 0; // Menggunakan operator null-aware
  print('Nilai Alice: $aliceScore');

  // Menghapus elemen map
  scores.remove('Charlie'); // Menghapus elemen dengan kunci 'Charlie'
  print('Setelah menghapus Charlie: $scores\n');

  // Menggunakan iterasi di map
  print('Iterasi melalui map: ');
  for (var entry in scores.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Memfilter elemen map
  var passedStudents =
      scores.entries.where((entry) => entry.value > 75).toList();
  print('\nSiswa yang lulus:');
  for (var entry in passedStudents) {
    print('${entry.key}: ${entry.value}');
  }

  // Menggunakan metode addAll
  Map<String, int> newScores = {
    'Eve': 95,
    'Frank': 60,
  };

  scores.addAll(newScores);
  print('\nSetelah menambah newScores: $scores');

  // Mengubah nilai
  scores['Roger'] = 88; // Mengubah nilai Roger
  print('Setelah mengubah nilai Roger: $scores');

  // Menggunakan forEach
  print('Menggunakan forEach untuk mencetak nilai:');
  scores.forEach((key, value) {
    print('$key: $value');
  });

  // Menggabungkan dua map
  Map<String, int> additionalScores = {
    'Gina': 92,
    'Harry': 77,
  };

  var mergedScores = {...scores, ...additionalScores}; // Menggabungkan dua map
  print('\nMap gabungan: $mergedScores');

  // Menggunakan metode containsKey dan containsValue
  print('Apakah map memiliki kunci "Alice" ? ${scores.containsKey('Alice')}');
  print('Apakah map memiliki nilai 90? ${scores.containsValue(90)}');

  // Menggunakan metode keys dan values
  print('\nKunci dalam map: ${scores.keys}');
  print('Nilai dalam Map: ${scores.values}');
}
