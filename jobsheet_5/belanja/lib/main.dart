import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belanja App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // 👉 Halaman awal aplikasi
      initialRoute: '/',

      // 👉 Definisi route
      routes: {
        '/': (context) =>  HomePage(),     // HomePage didefinisikan sebagai '/'
        '/item': (context) =>  ItemPage(), // ItemPage didefinisikan sebagai '/item'
      },
    );
  }
}
