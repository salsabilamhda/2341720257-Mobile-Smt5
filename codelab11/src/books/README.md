### Nama : Salsabila Mahda Runisha
### NIM : 2341720257
### Kelas : TI - 3F

## Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

<img width="588" height="128" alt="image" src="https://github.com/user-attachments/assets/9bf4abf0-d14c-443a-81b4-b511e07a8592" />

## Soal 2
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

<img width="1919" height="1073" alt="Cuplikan layar 2025-11-04 091750" src="https://github.com/user-attachments/assets/94129600-a2df-447c-887a-4f479ec43b6f" />

## Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

  Jawab :

  Pada langkah kelima kode tersebut, terdapat bagian yang menggunakan substring(0, 450) dan catchError. Bagian substring(0, 450) berfungsi untuk memotong hasil data yang diperoleh dari permintaan HTTP agar tidak terlalu panjang ketika ditampilkan di layar. Karena data dari API biasanya berupa teks JSON yang cukup besar, maka hanya 450 karakter pertama dari isi respons (value.body) yang ditampilkan. Dengan cara ini, hasil yang muncul lebih ringkas dan mudah dibaca. Sementara itu, bagian catchError digunakan untuk menangani kesalahan yang mungkin terjadi selama proses pengambilan data dari internet. Misalnya, jika terjadi kegagalan koneksi, alamat URL tidak dapat diakses, atau server mengembalikan respons yang tidak valid, maka blok catchError akan dijalankan. Di dalamnya, variabel result diisi dengan teks “An error occurred” untuk memberi tahu pengguna bahwa telah terjadi kesalahan, kemudian setState() dipanggil agar tampilan aplikasi diperbarui dan pesan kesalahan tersebut muncul di layar.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".

  https://github.com/user-attachments/assets/5ec65178-9804-49ee-8a53-07b159f32a46

## Soal 4
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
  
  Jawab

  Pada langkah pertama, tiga method asynchronous (returnOneAsync, returnTwoAsync, dan returnThreeAsync) dibuat untuk mensimulasikan proses yang membutuhkan waktu, seperti mengambil data dari server. Masing-masing method menggunakan Future.delayed selama tiga detik sebelum mengembalikan nilai 1, 2, dan 3. Sedangkan pada langkah kedua, method count() berfungsi untuk memanggil ketiga method tersebut secara berurutan menggunakan await, menunggu setiap proses selesai sebelum melanjutkan ke yang berikutnya. Hasil dari ketiga pemanggilan tersebut dijumlahkan dan kemudian ditampilkan pada antarmuka pengguna melalui pemanggilan setState(), yang memperbarui nilai variabel result agar perubahan terlihat di UI.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".

  https://github.com/user-attachments/assets/1351be65-7c41-4dfe-93a7-8c6728e9e1d5

## Soal 5
- Jelaskan maksud kode langkah 2 tersebut!

  Jawab :

  Pada langkah kedua ini, kode menggunakan Completer untuk mengelola proses asynchronous secara manual. Variabel `late Completer completer;` digunakan sebagai wadah yang nantinya akan menyelesaikan (`complete`) sebuah proses asynchronous dan mengembalikan hasilnya. Method `getNumber()` berfungsi untuk membuat instance baru dari `Completer<int>()`, kemudian memanggil method `calculate()` yang akan menjalankan proses asynchronous selama 5 detik menggunakan `Future.delayed`. Setelah waktu tunggu selesai, `calculate()` memanggil `completer.complete(42);` yang menandakan bahwa proses asynchronous telah selesai dan menghasilkan nilai 42. Nilai ini kemudian bisa diakses melalui `completer.future`, yang dikembalikan oleh `getNumber()`. Dengan kata lain, kode ini mensimulasikan proses yang berjalan di latar belakang selama 5 detik sebelum menghasilkan data (angka 42) yang nantinya bisa digunakan oleh bagian lain dari program.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 5".

  https://github.com/user-attachments/assets/2a70c987-27fc-431f-80ac-69f3eb3b67b2

## Soal 6
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

  Jawab

  Perbedaan antara langkah 2 dan langkah 5–6 terletak pada cara menangani hasil dan kesalahan dalam proses asynchronous. Pada langkah 2, kode hanya menggunakan Completer untuk menjalankan proses sederhana yang selalu berhasil setelah menunggu lima detik dan menghasilkan nilai 42, tanpa penanganan error. Sedangkan pada langkah 5–6, method calculate() diperbarui dengan blok try–catch untuk mengantisipasi kemungkinan error. Jika proses berhasil, completer.complete(42) dijalankan, tetapi jika gagal, completer.completeError() akan menandakan kesalahan. Selain itu, kode di bagian onPressed() juga ditingkatkan dengan penggunaan .then() untuk menampilkan hasil sukses ke UI dan .catchError() untuk menampilkan pesan jika terjadi error, sehingga proses asynchronous menjadi lebih aman dan interaktif.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 6".

  https://github.com/user-attachments/assets/1d787b0e-c8db-421a-bbe6-60ba6227317a

## Soal 7

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 7".

https://github.com/user-attachments/assets/6cb570b1-bd28-4a86-953f-b6126fb8abff

## Soal 8

Jelaskan maksud perbedaan kode langkah 1 dan 4!

Jawab :

Perbedaan langkah 1 dan 4 adalah pada cara menjalankan beberapa proses asynchronous secara bersamaan. Langkah 1 menggunakan **`FutureGroup`** dari pustaka eksternal untuk mengelompokkan dan menunggu beberapa `Future` selesai, sedangkan langkah 4 menggunakan **`Future.wait()`** yang merupakan fitur bawaan Dart dengan fungsi sama namun lebih sederhana dan efisien tanpa perlu membuat grup terlebih dahulu.

## Soal 9

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 9".

https://github.com/user-attachments/assets/521eecff-c593-401c-acc9-bbe6345a63e4

## Soal 10 

Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

Jawab  : 

Saat method handleError() dijalankan melalui ElevatedButton, hasil yang tampil di UI adalah pesan "Exception: Something terrible happened!", dan di konsol muncul tulisan "Complete". Pesan error ini berasal dari method returnError() yang sengaja melempar exception setelah menunggu dua detik. Perbedaannya, pada langkah 1 error hanya dilempar tanpa penanganan sehingga bisa menyebabkan aplikasi berhenti, sedangkan pada langkah 4 error tersebut ditangani dengan blok try–catch sehingga aplikasi tetap berjalan normal. Selain itu, bagian finally memastikan pesan “Complete” tetap muncul meskipun terjadi error.

https://github.com/user-attachments/assets/c9585635-8c9a-4891-8f1f-dc5bc9cc2f06

## Soal 11

Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

<img width="660" height="100" alt="image" src="https://github.com/user-attachments/assets/ead9be32-6f91-44ea-81d7-8334a88679a0" />

## Soal 12

- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

  Jawab :

  <img width="499" height="31" alt="image" src="https://github.com/user-attachments/assets/3b7dea0c-819c-4002-97d5-6b57cffdddc7" />

- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

  Jawab :

  Tidak, ketika dijalankan di browser, aplikasi biasanya tidak mendapatkan koordinat GPS yang sebenarnya. Hal ini karena Flutter Web tidak memiliki akses langsung ke sensor GPS perangkat, melainkan hanya menggunakan API geolokasi bawaan browser yang mengandalkan jaringan Wi-Fi, IP address, atau lokasi perangkat desktop. Selain itu, browser juga dapat memblokir akses lokasi jika tidak dijalankan melalui HTTPS atau jika izin lokasi tidak diberikan oleh pengguna. Akibatnya, aplikasi bisa menampilkan error atau hanya menampilkan lokasi perkiraan, bukan data GPS yang akurat.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 12".

  https://github.com/user-attachments/assets/d1fb5df5-ee4b-402a-bbb7-131dc3b5187c

## Soal 13

- Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

  Jawab :
  
  Ya, terdapat perbedaan UI antara praktikum sebelumnya dan praktikum kali ini. Pada praktikum sebelumnya, data lokasi diperoleh menggunakan then() dan diperbarui secara manual melalui setState(), sedangkan pada praktikum ini digunakan FutureBuilder yang membuat tampilan lebih efisien, bersih, dan reaktif terhadap perubahan data. Dengan FutureBuilder, proses pemuatan data ditangani secara otomatis melalui status Future, sehingga UI dapat menampilkan indikator loading saat data belum tersedia dan hasil lokasi saat proses selesai. Pendekatan ini membuat kode lebih ringkas serta memisahkan logika asynchronous dari tampilan UI dengan lebih baik.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 13".

  https://github.com/user-attachments/assets/6483f694-dcc1-4a7a-88d6-47a8a586da0c
  
- Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

## Soal 14

- Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?

  Jawab :

  Tidak ada perbedaan UI yang terlihat secara langsung dibandingkan langkah sebelumnya selama tidak terjadi error pada proses pengambilan lokasi. Hal ini karena penambahan kode snapshot.hasError hanya berfungsi sebagai penanganan kondisi error. Jadi, jika aplikasi berjalan normal dan berhasil mendapatkan lokasi, tampilan yang ditampilkan tetap sama seperti sebelumnya — yaitu koordinat lokasi. Namun, jika terjadi kesalahan (misalnya izin lokasi ditolak atau GPS dimatikan), maka UI akan menampilkan pesan "Something terrible happened!", menandakan bahwa fitur error handling kini sudah bekerja dengan baik untuk memberi umpan balik kepada pengguna.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 14".

  https://github.com/user-attachments/assets/6e904ebe-0831-437d-b4e4-b61929729bcf

## Soal 15

- Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

  <img width="545" height="60" alt="image" src="https://github.com/user-attachments/assets/716f5301-8047-412e-ac49-5f15937d1530" />

- Silakan ganti dengan warna tema favorit Anda.

  <img width="573" height="62" alt="image" src="https://github.com/user-attachments/assets/d389b2d2-2ff3-419e-8da9-9f56092ee98c" />

## Soal 16

- Cobalah klik se tiap button, apa yang terjadi ? Mengapa demikian ?

  Jawab :
  
  Ketika setiap tombol diklik, halaman kedua akan mengirimkan warna yang dipilih (misalnya merah, hijau, atau biru) kembali ke halaman pertama menggunakan Navigator.pop(). Halaman pertama kemudian menerima nilai warna tersebut melalui await Navigator.push() dan memperbarui tampilan latar belakangnya menggunakan setState(), sehingga warna background langsung berubah sesuai tombol yang ditekan. Hal ini terjadi karena mekanisme Navigator di Flutter memungkinkan pertukaran data antarhalaman secara reaktif tanpa perlu memuat ulang aplikasi.

  https://github.com/user-attachments/assets/0147c5ae-621e-4397-8581-f0bab7542434

- Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

  <img width="506" height="616" alt="image" src="https://github.com/user-attachments/assets/f4687cd9-6000-4a53-98fa-7577bc09fcf2" />

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 16".

  https://github.com/user-attachments/assets/e9806f4b-bad1-48a1-b14a-3f67e690605a

## Soal 17

- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

  Jawab :
  Saat tombol "Change Color" diklik, metode _showColorDialog dipanggil, yang kemudian menampilkan AlertDialog menggunakan await showDialog. Eksekusi metode ini akan dijeda oleh await hingga dialog ditutup. Ketika Anda mengklik salah satu tombol warna (Pink, Kuning, atau Tosca), onPressed pada tombol tersebut akan memperbarui variabel color dan kemudian memanggil Navigator.pop(context) untuk menutup dialog. Setelah dialog tertutup, await selesai dan kode melanjutkan eksekusi ke setState(() {}), yang memberitahu Flutter untuk membangun ulang (rebuild) UI, sehingga backgroundColor pada Scaffold berubah sesuai warna yang baru dipilih.

  https://github.com/user-attachments/assets/6759d0c0-7d00-4571-b0e4-42c5276f37c3

- Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!

  <img width="420" height="416" alt="image" src="https://github.com/user-attachments/assets/5b4d6630-5638-4e50-8cad-b8e62a973339" />

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 17".

  https://github.com/user-attachments/assets/f6e0f6ab-048b-4d8e-aa8c-5d662b93bd03


  
  







