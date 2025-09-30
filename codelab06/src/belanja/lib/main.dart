import 'package:flutter/material.dart';
import 'pages/home_page.dart';   // import halaman HomePage
import 'pages/item_page.dart';   // import halaman ItemPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Halaman awal yang akan ditampilkan pertama kali
      initialRoute: '/',
      // Definisi route
      routes: {
        '/': (context) => HomePage(),    // HomePage
        '/item': (context) => ItemPage() // ItemPage
      },
    );
  }
}
