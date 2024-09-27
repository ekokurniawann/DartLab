// ignore_for_file: dead_code

void main() {
  // Logical Operators Example

  // Variabel untuk menunjukkan status
  bool done = false;
  int col = 0;

  // Menggunakan operator NOT (!)
  if (!done) {
    print('Task is not done yet.');
  }

  // Menggunakan operator AND (&&) dan OR (||)
  if (done && (col == 0)) {
    print('Done and in column 0.');
  } else if (!done || col == 3) {
    print('Either not done or in column 3.');
  } else {
    print('Condition not met.');
  }

  // Contoh penggunaan dengan variabel
  bool isUserLoggedIn = true;
  bool hasAdminAccess = false;

  // Memeriksa hak akses menggunakan operator logika
  // ignore: dead_code
  if (isUserLoggedIn && hasAdminAccess) {
    print('User has admin access.');
  } else if (isUserLoggedIn && !hasAdminAccess) {
    print('User is logged in but does not have admin access.');
  } else {
    print('User is not logged in.');
  }

  // Penggunaan kombinasi operator logika
  bool isWeekend = true;
  bool isHoliday = false;

  if (isWeekend || isHoliday) {
    print('It\'s a day off!');
  } else {
    print('It\'s a working day.');
  }
}
