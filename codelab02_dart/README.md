Tugas Praktikum 

NIM : 2341720257

Nama : Salsabila Mahda Runisha

Kelas : TI - 3F 

I.	Praktik Dengan Dart

<img width="502" height="142" alt="Cuplikan layar 2025-09-03 135642" src="https://github.com/user-attachments/assets/c4deb6e4-dfbf-4f3d-9da8-f93cb5721b4a" />


II.	Tugas Praktikum
1.	Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
	Jawab :
	
	<img width="477" height="247" alt="Cuplikan layar 2025-09-03 135748" src="https://github.com/user-attachments/assets/265d1b33-4fe0-44a2-a260-7977cc42c9d2" />

3.	Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

	Jawab : 
	
	Karena bahasa Dart adalah inti dari framework Flutter. Kerangka kerja modern seperti Flutter membutuhkan bahasa modern tingkat tinggi agar bisa memberikan pengalaman terbaik kepada pengembang, serta memungkinkan untuk membuat aplikasi seluler yang luar biasa.. 

3.	Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
   
	Jawab :
	
	Rangkuman :
	
	a.	Dart penting untuk dipelajari sebelum menggukana Flutter karena bahasa Dart merupakan inti dari Flutter
	
	b.	Fitur – fitur Dart
	
	•	Productive tooling: merupakan fitur kakas (tool) untuk menganalisis kode, plugin IDE, dan ekosistem paket yang besar.
	
	•	Garbage collection: untuk mengelola atau menangani dealokasi memori (terutama memori yang ditempati oleh objek yang tidak lagi digunakan).
	
	•	nType annotations (opsional): untuk keamanan dan konsistensi dalam mengontrol semua data dalam aplikasi.
	
	•	Statically typed: Meskipun type annotations bersifat opsional, Dart tetap aman karena menggunakan fitur type-safe dan type inference untuk menganalisis types saat runtime. Fitur ini penting untuk menemukan bug selama kompilasi kode.

	•	Portability: bahasa Dart tidak hanya untuk web (yang dapat diterjemahkan ke JavaScript) tetapi juga dapat dikompilasi secara native ke kode Advanced RISC Machines (ARM) dan x86.
	
	c.	Alasan Tim Flutter memilih bahasa Dart karena Dart adalah bahasa modern yang luar biasa, mendukung lintas platform, dan memiliki tujuan umum dengan terus meningkatkan fitur - fiturnya, membuatkan lebih kekinian dan fleksibel.
	
	d.	Mode Eksesui kode Dart
	
	•	Kompilasi JIT adalah tempat kode sumber dikompilasi sesuai kebutuhan—Just in time.
	
	•	Kompilasi AOT adalah dimana Dart VM dan kode Anda dikompilasi sebelumnya, VM bekerja lebih seperti sistem runtime Dart, yang menyediakan garbage collector dan metode-metode native dari Dart software development kit (SDK) pada aplikasi. 
	
	e.	Struktur Bahasa Dart
	
	•	Object orientation . 
	
	•	Dart operators

	•	Arithmetic operators
	
	•	Operator Increment
	
	•	Operator Equality dan Relational
	
	•	Operator Logical
	
	f.	Desain Flutter sangat dipengaruhi oleh bahasa Dart
	

4.	Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !
   
	Jawab : 
	
	a.	Null Safety
	
	•	Null Safety adalah fitur di Dart (sejak versi 2.12) untuk mencegah error yang disebabkan oleh nilai null.
	
	•	Secara default, variabel tidak boleh null, kecuali kita menandainya dengan ?.
	
	Contoh yang salah (kode ada di folder src) :

	<img width="908" height="80" alt="Cuplikan layar 2025-09-03 135829" src="https://github.com/user-attachments/assets/490d51a2-9bdb-46be-8f06-61e45ce86067" />

	
	Contoh yang benar (kode ada di folder src) :
	<img width="488" height="72" alt="Cuplikan layar 2025-09-03 135918" src="https://github.com/user-attachments/assets/6388046f-114b-453d-a2dd-3d0b9e0e3e28" />

	 
	Atau ditandai dengan ?. (kode ada di folder src)

	<img width="712" height="116" alt="Cuplikan layar 2025-09-03 143912" src="https://github.com/user-attachments/assets/d378767a-661c-47c5-9755-6f0384117a06" />

	
	b.	Late Variable
	
	•	late digunakan jika kita menunda inisialisasi variabel, tapi tetap ingin memastikan bahwa variabel tersebut bukan null saat digunakan.
	
	•	Cocok untuk variabel yang nilai awalnya belum bisa ditentukan saat deklarasi, tapi pasti akan diisi sebelum dipakai.
	
	Contoh :

	Variable di inisialisasi setelah deklarasi dilakukan, tidak langsung saat deklarasi (kode ada folder src)

	<img width="721" height="73" alt="Cuplikan layar 2025-09-03 144033" src="https://github.com/user-attachments/assets/1878306d-0b55-45c8-9666-ac4554457de7" />

	
	Atau bisa langsung dikasih nilai dengan menggunakan lazy initialization (kode ada di folder src)

	<img width="721" height="96" alt="Cuplikan layar 2025-09-03 144143" src="https://github.com/user-attachments/assets/5b2cc4a7-aff7-4f0e-9b0c-4ad732465270" />


	Jadi perbedaan Null Safety dan Late variabel adalah: Null Safety (?) dipakai jika variabel boleh bernilai null, 
	sedangkan Late (late) dipakai jika variabel tidak boleh null tetapi nilainya baru bisa diberikan setelah deklarasi.
	
	NB : Seluruh Kode ada di folder src
			
			
