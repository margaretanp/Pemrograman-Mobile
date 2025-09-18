import 'dart:math';

void main() {
  print('===== MINI KASIR GARET! =====\n');

  // ---------------- Aritmatika ----------------
  double hargaItem1 = 25.000;
  double hargaItem2 = 40.000;
  int qty1 = 2;
  int qty2 = 1;
  double subtotal = (hargaItem1 * qty1) + (hargaItem2 * qty2);
  print(
    'Subtotal: ${(hargaItem1 * qty1)} + ${(hargaItem2 * qty2)} = $subtotal',
  );

  // Hitung diskon 10% jika subtotal > 50k
  double diskon = subtotal > 50.000 ? subtotal * 0.1 : 0;
  double totalBayar = subtotal - diskon;
  print('Diskon: $diskon');
  print('Total Bayar: $totalBayar');

  // ---------------- Increment / Decrement ----------------
  int jumlahCustomer = 0;
  print('\nJumlah customer awal: $jumlahCustomer');
  jumlahCustomer++; // pre–order datang
  print('Customer datang, jumlah ++ => $jumlahCustomer');
  jumlahCustomer--; // cancel
  print('Ada yang batal, jumlah -- => $jumlahCustomer');

  // ---------------- Relasional ----------------
  bool isDiskonBesar = diskon >= 10.000;
  print('\nDiskon >= 10.000 ? $isDiskonBesar');

  // ---------------- Logika ----------------
  bool member = true;
  bool belanjaBanyak = subtotal > 100.000;
  bool dapatBonus = member && belanjaBanyak;
  print('Member && BelanjaBanyak => $dapatBonus');

  // ---------------- Assignment Operators ----------------
  double kas = 100.000;
  print('\nKas awal: $kas');
  kas += totalBayar; // tambah hasil penjualan
  print('Kas += totalBayar => $kas');
  kas -= 5_000; // pengeluaran kecil
  print('Kas -= 5000 => $kas');

  // ---------------- Null-aware Operators ----------------
  String? catatanPromo;
  // catatanPromo = "Spesial member minggu ini!";
  String tampilPromo = catatanPromo ?? 'Tidak ada promo';
  print('\nPromo hari ini: $tampilPromo');
  // jika belum diisi, isi default
  catatanPromo ??= 'Promo default minggu depan';
  print('catatanPromo setelah ??= : $catatanPromo');

  // ---------------- Type Test ----------------
  Object dataInput = 123.45;
  if (dataInput is double) {
    print('\nInput bertipe double dengan ceil: ${dataInput.ceil()}');
  } else if (dataInput is int) {
    print('Input bertipe int');
  }

  // ---------------- Kondisional ----------------
  String kategori;
  if (subtotal >= 100.000) {
    kategori = 'Premium';
  } else if (subtotal >= 50.000) {
    kategori = 'Standar';
  } else {
    kategori = 'Ekonomis';
  }
  print('\nKategori belanja: $kategori');

  // Ternary singkat
  String statusLunas = (totalBayar <= kas) ? 'Lunas' : 'Piutang';
  print('Status: $statusLunas');

  // Switch
  String hari = 'Sabtu';
  switch (hari) {
    case 'Senin':
    case 'Selasa':
      print('Awal minggu kerja');
      break;
    case 'Sabtu':
    case 'Minggu':
      print('Weekend promo!');
      break;
    default:
      print('Hari biasa');
  }

  // ---------------- Bitwise ----------------
  print('\nBitwise Demo:');
  int kodePromo = 10;
  int masker = 12;
  print(kodePromo.toRadixString(2)); // "1010"
  print('kodePromo & masker -> ${(kodePromo & masker).toRadixString(2)}');
  print('kodePromo | masker -> ${(kodePromo | masker).toRadixString(2)}');
  print('kodePromo ^ masker -> ${(kodePromo ^ masker).toRadixString(2)}');
  print('~kodePromo -> ${(~kodePromo).toRadixString(2)}');
  print('kodePromo << 1 -> ${(kodePromo << 1).toRadixString(2)}');
  print('masker >> 2 -> ${(masker >> 2).toRadixString(2)}');

  // ---------------- Bonus: gabungan ----------------
  // Rumus acak: akar kuadrat totalBayar dengan pow()
  double akar = sqrt(totalBayar);
  print('\nAkar kuadrat totalBayar (sqrt) = $akar');

  print('\n===== Selesai =====');
}
