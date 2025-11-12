import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // 1. StreamController untuk INPUT (event)
  // Ini adalah "corong" untuk menerima perintah dari UI (misal: tombol ditekan)
  final _generateRandomController = StreamController<void>();

  // 2. StreamController untuk OUTPUT (state)
  // Ini adalah "pipa" untuk mengirimkan data (angka acak) ke UI
  final _randomNumberController = StreamController<int>();

  // --- Bagian Input ---
  // UI akan memanggil ini untuk mengirim event
  Sink<void> get generateRandom => _generateRandomController.sink;

  // --- Bagian Output ---
  // UI (StreamBuilder) akan "mendengarkan" stream ini
  Stream<int> get randomNumber => _randomNumberController.stream;

  // 3. Constructor (Logika Inti)
  // Ini adalah "otak" yang menghubungkan input dan output
  RandomNumberBloc() {
    // Mendengarkan setiap event yang masuk dari input controller
    _generateRandomController.stream.listen((_) {
      // Saat event (tombol) masuk, buat angka acak
      final random = Random().nextInt(10);
      
      // Kirim angka acak tersebut ke output controller
      _randomNumberController.sink.add(random);
    });
  }

  // 4. Method Dispose (Pembersih)
  // Penting untuk menutup stream agar tidak terjadi memory leak
  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}