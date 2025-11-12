import 'package:flutter/material.dart';
import 'stream.dart'; // Impor file dari Langkah 3
import 'dart:async'; // Impor ini ada di gambar Langkah 4

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Variabel dari Langkah 5
  late Stream<int> numberStream;

  // Method initState() dari Langkah 6
  @override
  void initState() {
    // Memulai stream saat widget pertama kali dibuat
    numberStream = NumberStream().getNumbers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // UI dari Langkah 4 (Scaffold & AppBar)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      // body dari Langkah 7 (StreamBuilder)
      body: StreamBuilder(
        stream: numberStream, // "Dengarkan" stream ini
        initialData: 0, // Tampilkan 0 sebelum data pertama datang
        builder: (context, snapshot) {
          // Jika stream mengirim error
          if (snapshot.hasError) {
            print('Error!');
          }
          // Jika stream mengirim data baru
          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(), // Tampilkan data terbaru
                style: const TextStyle(fontSize: 96),
              ),
            );
          } else {
            // Tampilkan ini jika belum ada data (atau saat loading)
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}