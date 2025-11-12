# Soal 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
  <img width="418" height="146" alt="Cuplikan layar 2025-11-12 140438" src="https://github.com/user-attachments/assets/92b59f1c-1614-48e3-8eef-78f10d2fdd52" />
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
  
  <img width="418" height="146" alt="Cuplikan layar 2025-11-12 140438" src="https://github.com/user-attachments/assets/de5e2466-26f3-4ea1-a411-e6638737d154" />

- Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"
  
# Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
  <img width="474" height="154" alt="Cuplikan layar 2025-11-12 140933" src="https://github.com/user-attachments/assets/9d65cab6-3bfe-407d-93ec-489ac1e3d920" />

- Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"
# Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!

  Jawab :

  Keyword yield* (dibaca "yield-star") digunakan untuk mendelegasikan atau meneruskan stream lain. Dalam kode ini, fungsi getColors() adalah sebuah generator async* yang menghasilkan Stream<Color>. Di dalamnya, Stream.periodic(...) juga menghasilkan sebuah Stream. Dengan menggunakan yield*, kita memberi tahu fungsi getColors(): "Ambil seluruh stream yang dihasilkan oleh Stream.periodic dan kirimkan (emit) semua nilainya satu per satu seolah-olah itu adalah nilaiku sendiri." Singkatnya, yield* memasukkan semua data dari stream lain ke dalam stream saat ini.
  
- Apa maksud isi perintah kode tersebut?

  Jawab :

  Perintah tersebut membuat sebuah stream yang setiap 1 detik akan mengeluarkan warna berikutnya dari dalam list colors, dan akan otomatis mengulang dari awal list (indeks 0) ketika sudah mencapai warna terakhir.
  
- Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"
  
# Soal 4
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/a659f647-457f-4308-86e3-6d9734b9a905

- Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"
  
# Soal 5
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

  Jawab :

  Perbedaan utama antara `listen()` dan `await for` terletak pada cara keduanya menangani aliran data (Stream). Method `listen()` menggunakan callback yang akan dipanggil setiap kali stream mengirim data baru dan berjalan secara **asinkron tanpa menunggu**—cocok untuk stream yang berjalan terus-menerus. Sedangkan `await for` digunakan di dalam fungsi `async` untuk **menunggu setiap data datang secara berurutan**, sehingga kode setelahnya baru dijalankan ketika stream selesai—lebih cocok untuk stream yang memiliki akhir (finite stream).

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

# Soal 6
- Jelaskan maksud kode langkah 8 dan 10 tersebut!

  Jawab :
  
  Langkah 8 (initState)
  
  Method initState() dijalankan sekali saat widget pertama kali dibuat untuk inisialisasi. Di sini dibuat objek NumberStream, diambil StreamController-nya, lalu stream.listen() digunakan untuk mendengarkan data baru. Setiap kali angka baru dikirim melalui stream, setState() memperbarui tampilan agar menampilkan angka terbaru.

  Langkah 10 (addRandomNumber)
  
  Method addRandomNumber() digunakan untuk menambahkan angka acak ke stream. Dengan Random().nextInt(10) dibuat angka 0–9, lalu numberStream.addNumberToSink(myNum) mengirim angka tersebut ke StreamController agar dapat diterima dan ditampilkan oleh listener di langkah sebelumnya.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  
  https://github.com/user-attachments/assets/943ab4b6-5cb2-48af-813f-f27386c76bc1

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".
  
# Soal 7
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

  Jawab :

  Langkah 13 (addError)
  
  Method addError() menambahkan event error ke stream dengan controller.sink.addError('error');. Fungsinya untuk mengirim “error” secara sengaja agar bisa diuji cara penanganannya.

  Langkah 14 (.onError)
  
  Callback .onError() pada stream.listen() digunakan untuk menangkap error dari stream. Saat error terjadi, setState(() { lastNumber = -1; }); dijalankan agar layar menampilkan -1 sebagai tanda error.

  Langkah 15 (Edit addRandomNumber)
  
  Isi addRandomNumber() diubah agar memanggil numberStream.addError(); bukan menambah angka acak. Tujuannya untuk menguji apakah penanganan error dari langkah sebelumnya bekerja dengan benar.
  
- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".
  
# Soal 8
- Jelaskan maksud kode langkah 1-3 tersebut!

  Jawab :

  Langkah 1–3 bertujuan membuat dan menerapkan **StreamTransformer** untuk memproses data dari stream sebelum ditampilkan. Pada **Langkah 1**, variabel `transformer` dideklarasikan menggunakan `late` agar diinisialisasi nanti. **Langkah 2** mendefinisikan `StreamTransformer.fromHandlers`, yang mengatur cara menangani data: data sukses dikalikan 10, error diubah menjadi -1 (sebagai bentuk pemulihan error), dan stream ditutup saat selesai. **Langkah 3** menerapkan transformer tersebut ke stream dengan `stream.transform(transformer).listen(...)`, sehingga data yang diterima dan ditampilkan sudah melalui proses transformasi sesuai aturan yang dibuat.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/c2ee1dc3-c39c-4d31-b9a3-c48897ad760b

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 8".
  
# Soal 9
- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

  Jawab :

  Pada **Langkah 2–8**, `initState()` digunakan untuk inisialisasi awal dan mulai mendengarkan aliran data (stream) dari `NumberStream`. Setiap kali data baru masuk, `setState()` memperbarui nilai `lastNumber` agar tampilan ikut berubah. Saat widget dihancurkan, **`dispose()`** dipanggil untuk membatalkan langganan stream dengan `subscription.cancel()` agar tidak terjadi error atau kebocoran memori. Sementara itu, **`addRandomNumber()`** berfungsi menghasilkan angka acak (0–9) dan mengirimkannya ke stream melalui `addNumberToSink()`, sehingga angka baru dapat langsung ditampilkan di layar.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/df697ef2-9305-48a0-8068-f4d892489f0b

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 9".
  
# Soal 10
- Jelaskan mengapa error itu bisa terjadi ?

  Jawab :

  Error itu terjadi karena Anda mencoba "mendengarkan" (listen) satu objek stream yang sama sebanyak dua kali.

# Soal 11 
- Jelaskan mengapa hal itu bisa terjadi ?

  Jawab :

  karena sekarang berhasil membuat dua "pendengar" (listener) yang aktif, dan kedua-duanya menambahkan angka yang sama ke variabel values.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/16033e9c-ff04-41ce-92ba-f7fa389ef09f

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 10,11".
  
# Soal 12
- Jelaskan maksud kode pada langkah 3 dan 7 !

  Jawab :

  Langkah 3 adalah Pabrik Data (Sumber Stream).

  Kode ini mendefinisikan sebuah kelas NumberStream yang memiliki satu method getNumbers(). Method inilah yang bertugas membuat dan mengirimkan aliran data.

  Langkah 7 adalah Konsumen UI (Yang Mendengarkan Stream).

  Kode ini menggunakan widget StreamBuilder untuk mengkonsumsi atau mendengarkan aliran data yang dibuat di Langkah 3, lalu menampilkannya ke UI.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/e6511618-a8ab-4875-bb7c-3ba2370dd817

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 12".
  
# Soal 13
- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

  Jawab :

  Praktikum ini menerapkan pola desain **BLoC (Business Logic Component)** untuk memisahkan logika bisnis dari tampilan (UI). File **random_screen.dart** hanya mengelola antarmuka, yaitu mengirim perintah ke BLoC saat tombol ditekan dan menampilkan hasil yang diterima, sedangkan **random_bloc.dart** berisi logika bisnis yang membuat angka acak dan mengirimkannya kembali ke UI. Konsep BLoC terlihat dari penggunaan **Sink** sebagai input untuk menerima perintah dari UI, **Stream** sebagai output untuk mengirim data ke UI, serta **constructor BLoC** yang berfungsi memproses event input menjadi output. Pemisahan ini membuat kode lebih bersih, terstruktur, mudah diuji, dan efisien untuk pengembangan aplikasi yang lebih kompleks.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  
  https://github.com/user-attachments/assets/ee0e3f03-70b6-4d43-8066-c15e066887e8

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 13".
