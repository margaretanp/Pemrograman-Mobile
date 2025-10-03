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

    return MaterialApp(
      title: 'Flutter layout: Margareta NIM: 2341760017',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(
          child: titleSection, // ganti Hello World dengan titleSection
        ),
      ),
    );
  }
}
