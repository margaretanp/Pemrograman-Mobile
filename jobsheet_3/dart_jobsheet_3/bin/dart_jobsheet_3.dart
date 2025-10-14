import 'dart:io';
import 'dart:math';

// === Fitur 1: Faktorial ===
BigInt factorial(int n) {
  BigInt result = BigInt.one;
  for (int i = 1; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

// === Fitur 2: Cek Bilangan Prima ===
bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  int limit = sqrt(n).toInt();
  for (int i = 3; i <= limit; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

// === Fitur 3: Game Tebak Angka ===
void guessingGame() {
  var rng = Random();
  int secret = rng.nextInt(100) + 1; // angka 1-100
  int attempts = 0;

  print('Tebak angka antara 1 sampai 100 (ketik q untuk keluar)');
  while (true) {
    stdout.write('Masukkan tebakan: ');
    var input = stdin.readLineSync();
    if (input == null) continue;

    if (input.toLowerCase() == 'q') {
      print('Kamu menyerah! Angka yang benar: $secret');
      break;
    }

    var guess = int.tryParse(input);
    if (guess == null) {
      print('Masukkan angka yang valid.');
      continue;
    }

    attempts++;
    if (guess == secret) {
      print('Benar! Kamu menebak dalam $attempts percobaan.');
      break;
    } else if (guess < secret) {
      print('Terlalu kecil!');
    } else {
      print('Terlalu besar!');
    }
  }
}

// === Menu utama ===
void main() {
  while (true) {
    print('\n=== MENU ===');
    print('1. Hitung Faktorial');
    print('2. Cek Bilangan Prima');
    print('3. Game Tebak Angka');
    print('4. Keluar');
    stdout.write('Pilih menu: ');

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Masukkan bilangan bulat: ');
        var n = int.tryParse(stdin.readLineSync() ?? '');
        if (n == null || n < 0) {
          print('Input tidak valid.');
        } else {
          print('Faktorial dari $n adalah ${factorial(n)}');
        }
        break;

      case '2':
        stdout.write('Masukkan bilangan: ');
        var n = int.tryParse(stdin.readLineSync() ?? '');
        if (n == null) {
          print('Input tidak valid.');
        } else if (isPrime(n)) {
          print('$n adalah bilangan prima.');
        } else {
          print('$n bukan bilangan prima.');
        }
        break;

      case '3':
        guessingGame();
        break;

      case '4':
        print('Terima kasih! Program selesai.');
        return;

      default:
        print('Pilihan tidak valid, coba lagi.');
    }
  }
}
