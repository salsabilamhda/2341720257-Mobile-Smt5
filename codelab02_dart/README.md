Tugas Praktikum 

NIM : 2341720257

Nama : Salsabila Mahda Runisha

Kelas : TI - 3F 

I.	Praktik Dengan Dart

<img width="734" height="504" alt="image" src="https://github.com/user-attachments/assets/4e1b85f3-85fe-420e-accd-f339989be67d" />



II.	Tugas Praktikum
1.	Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
	Jawab :
	
	<img width="756" height="572" alt="image" src="https://github.com/user-attachments/assets/b180c7d4-5783-4b13-bc46-05e6f0857082" />


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

	<img width="903" height="466" alt="image" src="https://github.com/user-attachments/assets/2a066583-66bc-4ab0-b92e-7dfa77e6e677" />


	
	Contoh yang benar (kode ada di folder src) :

	<img width="677" height="376" alt="image" src="https://github.com/user-attachments/assets/575a2910-1311-47a3-a34b-335269a320f7" />


	 
	Atau ditandai dengan ?. (kode ada di folder src)

	<img width="652" height="452" alt="image" src="https://github.com/user-attachments/assets/59dc9d6f-4ad5-4019-9fa1-c07eeb4a7198" />


	
	b.	Late Variable
	
	•	late digunakan jika kita menunda inisialisasi variabel, tapi tetap ingin memastikan bahwa variabel tersebut bukan null saat digunakan.
	
	•	Cocok untuk variabel yang nilai awalnya belum bisa ditentukan saat deklarasi, tapi pasti akan diisi sebelum dipakai.
	
	Contoh :

	Variable di inisialisasi setelah deklarasi dilakukan, tidak langsung saat deklarasi (kode ada folder src)

	<img width="689" height="437" alt="image" src="https://github.com/user-attachments/assets/10d2a149-3f79-4be7-8530-98ce216a6f31" />


	
	Atau bisa langsung dikasih nilai dengan menggunakan lazy initialization (kode ada di folder src)

	<img width="680" height="446" alt="image" src="https://github.com/user-attachments/assets/f05c6f5b-0c74-42e1-a8ab-5420ef190c37" />



	Jadi perbedaan Null Safety dan Late variabel adalah: Null Safety (?) dipakai jika variabel boleh bernilai null, 
	sedangkan Late (late) dipakai jika variabel tidak boleh null tetapi nilainya baru bisa diberikan setelah deklarasi.
	
	NB : Seluruh Kode ada di folder src
			
			
