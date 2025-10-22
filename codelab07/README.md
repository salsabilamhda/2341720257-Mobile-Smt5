# Praktikum Menerapkan Plugin di Project Flutter

## Hasil Akhir :
<img width="948" height="1126" alt="Cuplikan layar 2025-10-06 221201" src="https://github.com/user-attachments/assets/2e245e16-229e-4c65-9197-43bd1841afc1" />


# TUGAS PRAKTIKUM

## Jelaskan maksud dari langkah 2 pada praktikum tersebut!

Jawab : 

Langkah 2 bertujuan untuk menambahkan plugin `auto_size_text` ke dalam proyek Flutter agar dapat digunakan untuk membuat teks yang otomatis menyesuaikan ukuran sesuai ruang yang tersedia.


## Jelaskan maksud dari langkah 5 pada praktikum tersebut!

Jawab : 

Langkah 5 bertujuan untuk mendefinisikan variabel `text` dan menambahkannya sebagai parameter pada konstruktor agar widget `RedTextWidget` dapat menerima dan menampilkan teks yang dikirim saat dipanggil.


## Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

Jawab : 

Kedua widget berfungsi untuk menampilkan teks di dalam kotak berwarna, namun berbeda dalam cara penampilan teksnya: `Container` pertama menggunakan `RedTextWidget` yang menampilkan teks berwarna merah dan otomatis menyesuaikan ukuran hurufnya sesuai lebar kotak, sedangkan `Container` kedua menggunakan widget `Text` biasa yang menampilkan teks dengan ukuran tetap tanpa penyesuaian otomatis.


## Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

Jawab : 

Berikut beberapa parameter penting dari **`AutoSizeText`** dan maknanya:

- `minFontSize` → ukuran font minimum yang boleh digunakan ketika teks disesuaikan agar muat ([Dart packages][1])
- `maxFontSize` → batas atas ukuran font yang boleh digunakan (jika teks lebih besar dari itu tetap tidak melebihi) ([Dart packages][1])
- `stepGranularity` → besaran langkah penurunan ukuran font setiap iterasi ketika mencoba agar teks muat ([Dart packages][1])
- `presetFontSizes` → daftar ukuran font yang sudah ditentukan yang boleh digunakan (jika diisi, `minFontSize`, `maxFontSize`, dan `stepGranularity` akan diabaikan) ([Dart packages][1])
- `group` → objek `AutoSizeGroup` untuk sinkronisasi ukuran font antara beberapa `AutoSizeText` dalam satu grup agar mereka punya ukuran font yang sama ([Dart packages][1])
- `overflow` → cara menangani teks yang tetap melebihi batas setelah proses penyesuaian (misalnya `TextOverflow.ellipsis`) ([Dart packages][1])
- `overflowReplacement` → widget alternatif yang akan ditampilkan jika teks tidak bisa diperkecil lagi agar sesuai batas ([Dart packages][1])
- `maxLines` → jumlah maksimal baris yang boleh dipakai; jika teks melebihi baris ini maka dikompresi atau dipangkas sesuai pengaturan overflow ([Dart packages][1])
- `textAlign`, `textDirection`, `locale`, `softWrap`, `wrapWords`, `textScaleFactor`, `semanticsLabel` → parameter tambahan yang perilakunya sama seperti pada widget `Text`, mengatur perataan, arah teks, pembungaan kata, dan aksesibilitas ([Dart packages][1])






