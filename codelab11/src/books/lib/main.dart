import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  // ====== Future yang mensimulasikan error ======
  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  // ====== Langkah 4: Tambah method handleError() ======
  Future handleError() async {
    try {
      await returnError(); // menjalankan Future yang akan error
      setState(() {
        result = 'Success'; // jika tidak error
      });
    } catch (error) {
      setState(() {
        result = error.toString(); // tampilkan pesan error
      });
    } finally {
      print('Complete'); // dijalankan selalu, apapun hasilnya
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              // ====== Panggil method handleError() di onPressed() ======
              onPressed: () {
                handleError();
              },
            ),
            const Spacer(),
            Text(
              result,
              style: const TextStyle(fontSize: 24),
            ),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
