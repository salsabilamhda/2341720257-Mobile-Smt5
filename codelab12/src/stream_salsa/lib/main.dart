import 'package:flutter/material.dart';
import 'dart:async'; // Diperlukan untuk StreamSubscription, StreamController
import 'dart:math'; // Diperlukan untuk Random
import 'stream.dart'; // Import file stream.dart

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
        primarySwatch: Colors.purple,
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
  // Variabel dari Soal 10
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamSubscription<int> subscription;
  late StreamSubscription<int> subscription2;
  String values = '';

  @override
  void initState() {
    super.initState();
    
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // --- PERUBAHAN UTAMA (LANGKAH 4) ---
    // Stream diubah menjadi Broadcast Stream
    Stream<int> stream = numberStreamController.stream.asBroadcastStream();
    // ------------------------------------

    // Listener pertama (Sekarang aman)
    subscription = stream.listen((event) {
      setState(() {
        values += '$event - '; 
      });
    });

    // Listener kedua (Sekarang aman)
    // Ini tidak akan error lagi karena stream-nya adalah broadcast
    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    // Handler error (opsional, tapi baik untuk ada)
    subscription.onError((error) {
      setState(() {
        values = 'Error: -1'; 
      });
    });
    // Handler onDone (opsional)
    subscription.onDone(() {
      print('OnDone was called');
    });
  }

  // Method untuk menutup stream
  void stopStream() {
    numberStreamController.close();
  }

  @override
  void dispose() {
    // Batalkan KEDUA subscription
    subscription.cancel();
    subscription2.cancel(); 
    super.dispose();
  }

  // Method untuk menambah angka
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10); 

    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        values = 'Stream Closed'; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // --- PERUBAHAN UI (LANGKAH 5) ---
            // Menampilkan 'values' bukan 'lastNumber'
            Text(
              values,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // --------------------------------

            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}