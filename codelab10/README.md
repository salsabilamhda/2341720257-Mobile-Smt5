# Praktikum 1

https://github.com/user-attachments/assets/6f86f8b2-8d1e-436c-8a7e-2bcff41fd533

# Tugas Praktum 1
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

   Jawab :

   Langkah 4 membuat file data_layer.dart untuk mengekspor semua model (plan.dart dan task.dart) agar proses import di file lain lebih ringkas dan rapi.
   
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

   Jawab :

   Variabel plan digunakan untuk menyimpan daftar tugas (state utama aplikasi). Dibuat const agar memiliki nilai awal yang tetap dan efisien sebelum ada perubahan lewat setState().

5. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

   Jawab :
   
   https://github.com/user-attachments/assets/76126507-36fa-4c87-9fcb-e37ba4ff8f2a

   Menampilkan daftar tugas menggunakan ListTile berisi Checkbox dan TextFormField. Pengguna bisa menambah, mengedit, dan menandai tugas selesai. Perubahan langsung terlihat karena menggunakan setState().
  
6. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

   Jawab :

   - initState() → dijalankan sekali saat widget dibuat untuk inisialisasi ScrollController.

   - dispose() → dijalankan saat widget dihapus untuk membersihkan controller agar tidak terjadi memory leak.
   
7. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

# Praktikum 2

https://github.com/user-attachments/assets/749d1184-6cd6-4f2b-b6b8-1d5e7f3397ba

# Tugas Praktikum 2

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

   Jawab :

   Yang dimaksud InheritedWidget ada pada class:
   
   class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> { ... }

   Widget ini digunakan untuk mewariskan data (Plan) ke seluruh widget turunannya dalam pohon widget Flutter tanpa perlu mengirim data lewat konstruktor secara manual.

   InheritedNotifier digunakan karena kita memakai ValueNotifier<Plan> sebagai penyimpan state. Dengan InheritedNotifier, widget otomatis rebuild setiap kali nilai ValueNotifier berubah — sehingga lebih efisien dibanding InheritedWidget biasa yang perlu pemanggilan manual setState().
   
4. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

   Jawab :

   Digunakan untuk menghitung jumlah tugas yang selesai dan menampilkan pesan progres seperti “2 out of 5 tasks”. Tujuannya agar status kemajuan rencana (Plan) bisa ditampilkan secara dinamis di UI.
   
5. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

   Jawab :

    https://github.com/user-attachments/assets/9354389b-3ef5-423b-a785-3b0ca6e2e068

     Hasil akhir menampilkan:
   - Daftar tugas (task list) yang bisa diubah deskripsinya.
   - Checkbox untuk menandai tugas selesai.
   - Tombol + untuk menambah tugas baru.
   - Bagian bawah menampilkan progress seperti 3 out of 5 tasks.
   
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

# Praktikum 3

https://github.com/user-attachments/assets/fb81c5db-61c8-49ea-a7a1-c8281e87707c

# Tugas Praktikum 

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

   <img width="762" height="407" alt="image" src="https://github.com/user-attachments/assets/6d78b408-c670-4e8a-8bb1-8c297a7ce0fe" />

    Jawab :

    Gambar Kiri (Biru)
   
    Menampilkan struktur widget ketika aplikasi masih di halaman utama (PlanCreatorScreen), di mana pengguna bisa menambahkan daftar rencana (plan).
    - MaterialApp → root aplikasi.
    - PlanProvider → pembungkus data global menggunakan InheritedNotifier.
    - PlanCreatorScreen → menampilkan TextField untuk input plan dan ListView untuk daftar plan.

    Gambar Kanan (Hijau)
   Setelah pengguna memilih salah satu plan, aplikasi menavigasi ke halaman baru (PlanScreen) menggunakan Navigator.push.
    - PlanScreen menampilkan daftar tugas (Task) dari plan yang dipilih.
    - Di dalamnya terdapat ListView untuk daftar tugas dan Text untuk menampilkan progress.
      
4. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

   Jawab :
   
   https://github.com/user-attachments/assets/9efed106-c089-439e-916e-ec52273c741a

   - Pengguna mengetik nama plan baru di halaman utama, lalu menambahkannya.
   - Daftar plan tampil di bawah.
   - Saat salah satu plan ditekan, aplikasi berpindah ke halaman detail (PlanScreen).
   - Di sana, pengguna dapat menambahkan task, menandai selesai, dan melihat progress berubah otomatis.

6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !






