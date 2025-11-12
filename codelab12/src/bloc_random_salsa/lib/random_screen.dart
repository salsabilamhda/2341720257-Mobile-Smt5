import 'package:flutter/material.dart';
import 'random_bloc.dart'; // Impor file BLoC

// StatefulWidget untuk menampung BLoC
class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  // Inisialisasi BLoC
  final _bloc = RandomNumberBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Number')),
      body: Center(
        // StreamBuilder bertugas "mendengarkan" BLoC
        child: StreamBuilder<int>(
          stream: _bloc.randomNumber, // Sambungkan ke output stream BLoC
          initialData: 0, // Nilai awal sebelum data pertama datang
          builder: (context, snapshot) {
            // Tampilkan data terbaru dari stream
            return Text(
              'Random Number: ${snapshot.data}',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Saat tombol ditekan, kirim event ke input sink BLoC
        onPressed: () => _bloc.generateRandom.add(null),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  // Panggil dispose BLoC saat widget dihancurkan
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}