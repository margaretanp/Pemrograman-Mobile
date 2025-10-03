import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 👉 titleSection ditambahkan di atas build()
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di sepanjang tepi
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // posisi ke kiri
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Ranu Kumbolo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Taman Nasional Bromo Tengger Semeru (TNBTS), Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey), // warna abu-abu
                ),
              ],
            ),
          ),
          /* soal 3 */
          const Icon(
            Icons.star,
            color: Colors.red, // bintang merah
          ),
          const SizedBox(width: 4), // beri jarak biar rapi
          const Text('4.1'),
        ],
      ),
    );

  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Ranu Kumbolo adalah danau indah yang berada di kaki Gunung Semeru, Jawa Timur,'
    'ketinggian 2.400 mdpl, menjadi titik transit dan tempat favorit bagi pendaki karena'
    'pemandangannya yang menakjubkan, udara sejuk, dan air bersihnya yang melimpah. '
    'untuk kebutuhan pendakian, serta langit malam bertabur bintang yang memukau '
    '2341760017 - Marga Reta Novia Putri🙂.',
    softWrap: true,
  ),
);

    return MaterialApp(
      title: 'Flutter layout: Margareta NIM: 2341760017',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'image/ranu_kumbolo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, buttonSection, textSection], // ganti Hello World dengan titleSection
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  } 
}
