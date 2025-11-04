import 'dart:async';
import 'package:async/async.dart'; // ✅ Langkah 1: import async
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

  // ====== Langkah 2: Tambahkan variabel late dan method untuk Completer ======
  late Completer<int> completer;

  Future<int> getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // ====== Langkah 5: Ganti isi method calculate() ======
  Future<void> calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5)); // simulasi proses lama
      completer.complete(42); // hasil sukses
      // throw Exception(); // gunakan ini untuk mengetes error
    } catch (_) {
      completer.completeError({}); // jika error
    }
  }

  // ====== Tambahkan tiga method Future (kode lama tetap ada, tapi tidak dipakai dulu) ======
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future<void> count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
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
              // ====== Langkah 6: Pindah ke onPressed() ======
              onPressed: () {
                getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                }).catchError((e) {
                  setState(() {
                    result = 'An error occurred';
                  });
                });
              },
            ),
            const Spacer(),
            Text(result, style: const TextStyle(fontSize: 24)),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
