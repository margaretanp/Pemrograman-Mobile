void main() {
  double berat = 55;      // contoh berat (kg)
  double tinggi = 1.5;   // contoh tinggi (meter)

  double bmi = berat / (tinggi * tinggi);

  print('BMI Anda: ${bmi.toStringAsFixed(2)}');

   if (bmi < 18.5) {
    print('Kategori: Kekurangan berat badan');
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print('Kategori: Normal (ideal)');
  } else if (bmi >= 25 && bmi < 29.9) {
    print('Kategori: Kelebihan berat badan');
  } else {
    print('Kategori: Obesitas');
  }
}
 
