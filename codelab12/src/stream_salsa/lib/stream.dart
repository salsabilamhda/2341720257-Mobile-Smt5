import 'dart:async'; // Langkah 1

// Langkah 2: Tambah class NumberStream
class NumberStream {
  // Langkah 3: Tambah StreamController
  final StreamController<int> controller = StreamController<int>();

  // Langkah 4: Tambah method addNumberToSink
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  // Langkah 5: Tambah method close()
  close() {
    controller.close();
  }
}