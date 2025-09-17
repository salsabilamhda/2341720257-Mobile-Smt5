# A. PRAKTIKUM 1
 1. Langkah 1
    
    <img width="334" height="308" alt="image" src="https://github.com/user-attachments/assets/eaa4ca03-13f1-4c62-8cf0-3f61263025cf" />

 2. Langkah 2

    <img width="598" height="97" alt="image" src="https://github.com/user-attachments/assets/75a52f73-353d-4449-9d62-9103767c3fcc" />

    Kode tersebut berjalan tanpa error karena list di Dart bersifat mutable sehingga elemennya dapat diubah. Awalnya list [1, 2, 3] memiliki panjang 3 dan elemen pada indeks ke-1 bernilai 2, lalu dicetak hasil 3 dan 2. Setelah elemen indeks ke-1 diubah menjadi 1, program mencetak 1 sebagai output terakhir

 3. Langkah 3
    
    <img width="442" height="192" alt="image" src="https://github.com/user-attachments/assets/1fcb6f8d-71b0-4a26-af51-1a7670df1d6a" />

    Output :
    
    <img width="704" height="76" alt="image" src="https://github.com/user-attachments/assets/590adc06-b5ce-4a89-913f-38ad4982ba07" />

    Kode berhasil dijalankan tanpa error karena meskipun list dideklarasikan dengan final, isinya tetap bisa diubah. List awal [null, null, null, null, null], lalu pada indeks ke-1 diisi nama dan pada indeks ke-2 diisi NIM, sehingga hasil akhirnya menjadi [null, Nama, NIM, null, null]

# B. PRAKTIKUM 2
1. Langkah 1

   <img width="728" height="104" alt="image" src="https://github.com/user-attachments/assets/e036a03d-7ca3-4b62-b19d-89b4f041070e" />

2. Langkah 2

   <img width="702" height="72" alt="image" src="https://github.com/user-attachments/assets/a739b27a-5d6b-4a97-8069-8b3d71a05a44" />

   Kode berjalan tanpa error karena {} dengan isi elemen diperlakukan sebagai Set, sehingga program mencetak kumpulan data halogens tanpa urutan yang pasti.
   
3. Langkah 3

   <img width="728" height="290" alt="image" src="https://github.com/user-attachments/assets/295db145-42e4-4a93-ab7e-b01e31a4dd1c" />

   Output :
   
   <img width="715" height="114" alt="image" src="https://github.com/user-attachments/assets/c2513995-beaf-44d8-8d88-a688b400e2b6" />

   Program mencetak halogens sebagai Set berisi lima elemen, names1 dan names2 sebagai Set kosong, sedangkan names3 sebagai Map kosong karena {} tanpa tipe default dianggap Map.

   <img width="715" height="347" alt="image" src="https://github.com/user-attachments/assets/178a9425-ba3f-49be-8d1f-d354be986d69" />

   Output :

   <img width="705" height="88" alt="image" src="https://github.com/user-attachments/assets/6a54e4ad-73d4-4c8a-a668-6da93c8e0778" />

# C. PRAKTIKUM 3
1. Langkah 1

   <img width="291" height="439" alt="image" src="https://github.com/user-attachments/assets/ae021728-a2d7-4e4a-b820-6baabfd73246" />

2. Langkah 2

   <img width="706" height="86" alt="image" src="https://github.com/user-attachments/assets/f4e5315b-bd12-422d-b19a-b24eaf17fff2" />

   Program berjalan tanpa error karena {key: value} di Dart otomatis dikenali sebagai Map, sehingga gifts dan nobleGases dicetak sebagai pasangan key–value sesuai isinya.
   
3. Langkah 3

   <img width="370" height="667" alt="image" src="https://github.com/user-attachments/assets/460d54a8-af46-40d2-abf7-7c60d14b4ff6" />

   Output :
   
   <img width="702" height="81" alt="image" src="https://github.com/user-attachments/assets/2ab10b99-d9b5-470d-b459-f64a2dbaa0bb" />

   Program berjalan tanpa error karena mhs1 dan mhs2 bertipe Map sesuai deklarasi, sehingga penambahan elemen dengan key dan value yang cocok berhasil dan Map berisi data baru sesuai assignment.

   Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).

   <img width="368" height="428" alt="image" src="https://github.com/user-attachments/assets/556883e4-85ff-4653-ad69-25de1598ab7e" />

   Output :

   <img width="721" height="201" alt="image" src="https://github.com/user-attachments/assets/0806309d-9a17-4c6d-984f-6abd09bc01df" />

# D. PRAKTIKUM 4
1. Langkah 1

   <img width="289" height="180" alt="image" src="https://github.com/user-attachments/assets/67058baa-074c-4387-96c0-3aefe4e0bea4" />

2. Langkah 2

   <img width="700" height="112" alt="image" src="https://github.com/user-attachments/assets/0dbdcc28-2c57-4a96-b8f3-87ed33947bcc" />

   Program error karena print(list1); memanggil variabel yang tidak ada, sehingga perlu diperbaiki menjadi print(list); agar kode berjalan normal dan mencetak isi list dengan benar.

   Perbaikan Kode :

   <img width="290" height="176" alt="image" src="https://github.com/user-attachments/assets/c70ba648-80b7-405d-88be-6b0637a41ede" />

   Output :

   <img width="701" height="96" alt="image" src="https://github.com/user-attachments/assets/577d4901-fa72-4440-80fd-04e92f2ac2b8" />
  
3. Langkah 3

   <img width="289" height="288" alt="image" src="https://github.com/user-attachments/assets/1eac00a9-fe55-4465-b221-07103c5d505b" />

   Output :

   <img width="707" height="292" alt="image" src="https://github.com/user-attachments/assets/d5706cac-b599-4ded-a175-e8891fb66b03" />

   Program error karena list1 belum dideklarasikan, sehingga perlu ditulis var list1 = [1, 2, null]; agar kode berjalan normal dan mencetak list beserta panjangnya.

   Perbaikan Kode :

   <img width="301" height="307" alt="image" src="https://github.com/user-attachments/assets/d04a43d4-95a6-4b6b-b539-0ed69d637a39" />

   Output :

   <img width="700" height="139" alt="image" src="https://github.com/user-attachments/assets/778e9aa9-2b6b-4b7d-9a09-39cf745225dd" />

   Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.

   <img width="345" height="116" alt="image" src="https://github.com/user-attachments/assets/3c7c4ab5-462d-4ebe-b91a-8e168b2f23f0" />

   Output :

   <img width="708" height="157" alt="image" src="https://github.com/user-attachments/assets/2c1a0a08-28d6-4d9d-84d0-76e2cdda7ac8" />

4. Langkah 4

   <img width="694" height="62" alt="image" src="https://github.com/user-attachments/assets/1e82ffe1-a00f-4499-9443-a7304b48fdee" />

   Output :
   
   <img width="709" height="100" alt="image" src="https://github.com/user-attachments/assets/4b6d24f4-f24c-4813-b86f-8c271461c9dd" />

   Kode error karena variabel promoActive belum dideklarasikan.

   Perbaikan Kode :

   <img width="694" height="224" alt="image" src="https://github.com/user-attachments/assets/b0896732-7339-4c06-87e3-1e6bda072c35" />

   Output :

   <img width="718" height="215" alt="image" src="https://github.com/user-attachments/assets/99c9d615-6082-4b23-be25-6611cd5d2034" />

5. Langkah 5.

    <img width="809" height="55" alt="image" src="https://github.com/user-attachments/assets/97d0193c-f8e6-4b09-8d76-2c5a81db560c" />

    Output :

   <img width="718" height="262" alt="image" src="https://github.com/user-attachments/assets/29d38fb8-be1f-4597-abad-d072bd4a9ab2" />

   Kode error karena variabel login belum pernah dideklarasikan dan variabel nav2 ditulis dua kali (duplikasi).

   Perbaikan Kode :

   <img width="794" height="226" alt="image" src="https://github.com/user-attachments/assets/7addc34d-fc3a-49e1-a7f3-f250afbe3423" />

   Output :

   <img width="700" height="250" alt="image" src="https://github.com/user-attachments/assets/c1a5c219-a1a0-4eb8-8d15-60bed25daf94" />

6. Langkah 6

   <img width="617" height="102" alt="image" src="https://github.com/user-attachments/assets/63eeca83-345e-4b45-823b-4203cf809c27" />

   Output :

   <img width="704" height="268" alt="image" src="https://github.com/user-attachments/assets/bfc1f33f-1677-4dc7-83ff-557a87e7d507" />

   Manfaat Collection For :
   
   a. Mempermudah pembuatan list dinamis dari list lain dengan cara ringkas.
   
   b. Menghindari penggunaan loop manual for untuk menambahkan elemen ke list.
   
   c. Menjadikan kode lebih singkat, deklaratif, dan mudah dibaca.

# E. PRAKTIKUM 5
1. Langkah 1

   <img width="465" height="98" alt="image" src="https://github.com/user-attachments/assets/e2957a11-e517-4f58-bc55-0b45395b2710" />

2. Langkah 2

   <img width="708" height="71" alt="image" src="https://github.com/user-attachments/assets/70fea79a-df2e-4d98-89ef-441b87433856" />

   Kode tersebut berjalan tanpa error dan akan menampilkan record tuple ('first', a: 2, b: true, 'last'), yaitu fitur Dart terbaru untuk menyimpan beberapa nilai dalam satu variabel dengan kombinasi posisi dan nama field.
   
3. Langkah 3

   <img width="373" height="103" alt="image" src="https://github.com/user-attachments/assets/91cc0da7-b6a6-4a76-8e6c-25d40e316755" />

   Output : 

   <img width="704" height="56" alt="image" src="https://github.com/user-attachments/assets/780e9e17-59ec-4e9c-a6af-cea7812a062b" />

   Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

   <img width="351" height="168" alt="image" src="https://github.com/user-attachments/assets/6e3ac58f-9f3f-42aa-9d1c-1a9acc9063d9" />

   Output :

   <img width="705" height="92" alt="image" src="https://github.com/user-attachments/assets/609c1b84-9a40-45b5-8c8a-1eec4857e76e" />

4. Langkah 4

   <img width="525" height="73" alt="image" src="https://github.com/user-attachments/assets/fc99f726-0421-4da2-9047-3b3666e82e9e" />

   Output :

   <img width="725" height="120" alt="image" src="https://github.com/user-attachments/assets/f73bb518-50a5-4c1b-8dfa-34311d3d5426" />

   Perbaikan Kode :

   <img width="599" height="88" alt="image" src="https://github.com/user-attachments/assets/7d1a50f5-534a-4732-82fd-67057395c462" />

   Output :

   <img width="706" height="121" alt="image" src="https://github.com/user-attachments/assets/fecf2345-247d-4762-ac73-54aaa9944ad6" />

5. Langkah 5

   <img width="499" height="171" alt="image" src="https://github.com/user-attachments/assets/3dd87885-fe04-470b-8090-463b62bc2918" />

   Output :

   <img width="705" height="200" alt="image" src="https://github.com/user-attachments/assets/b03334bb-964d-4335-af78-b6b4e65b7214" />

   Gantilah salah satu isi record dengan nama dan NIM Anda.

   <img width="769" height="144" alt="image" src="https://github.com/user-attachments/assets/d57f9104-b540-4099-bc59-ef66109fb005" />

   Output :

   <img width="703" height="200" alt="image" src="https://github.com/user-attachments/assets/3161cd9c-9df0-44de-b7ff-0015cf9b2749" />

# F. TUGAS PRAKTIKUM

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

   Jawab :

   Function adalah blok kode yang dapat dipanggil untuk menjalankan tugas tertentu. Function membantu agar program lebih terstruktur, mudah dibaca, dan bisa digunakan kembali.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

   Jawab :

   a. Positional Parameter : harus di isi sesuai aturan

   <img width="388" height="75" alt="image" src="https://github.com/user-attachments/assets/8ba81aa4-ea1e-4511-8467-f1b75fc5c684" />

   b. Optional Posional Parameter : boleh diisi atau tidak, dengan tanda []

   <img width="442" height="73" alt="image" src="https://github.com/user-attachments/assets/4778ea00-7831-4103-9762-c51a154cabb4" />

   c. Named Parameter : dipanggil pakai nama, dengan {}

   <img width="491" height="80" alt="image" src="https://github.com/user-attachments/assets/d3b6b67f-cf9b-4809-aad7-f6adb83043a5" />

   d. Default Parameter : punya nilai bawaan jika tidak di isi

   <img width="389" height="78" alt="image" src="https://github.com/user-attachments/assets/27d28475-aead-448a-9d59-a850ad20c676" />

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

   Jawab :

   Function di Dart bisa diperlakukan seperti variabel: disimpan dalam variabel, dikirim sebagai parameter, atau dikembalikan dari function.

   <img width="577" height="168" alt="image" src="https://github.com/user-attachments/assets/45a39bb0-36dd-4ba6-8d65-8ac61eef5640" />

   Output :

   <img width="709" height="75" alt="image" src="https://github.com/user-attachments/assets/bca0e2d2-1a02-43c4-be50-8891261007b8" />


6. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

   Jawab :

   Anonymous function adalah function tanpa nama, biasanya digunakan untuk fungsi singkat atau sekali pakai.

   <img width="404" height="188" alt="image" src="https://github.com/user-attachments/assets/2e50912c-a10d-4676-96b0-df5e48c40f9b" />

   Output :

   <img width="709" height="100" alt="image" src="https://github.com/user-attachments/assets/18db8172-afcf-4723-86af-8c9406bc4df3" />

7. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

   Jawab :

   Lexical Scope hanya bisa diakses sesuai blok tempat didefinisikan sedangkan Lexical Closure bisa mengingat variabel dari scope luar meski scope luar sudah selesai di eksekusi.

   Contoh Lexical Scope :

   <img width="642" height="172" alt="image" src="https://github.com/user-attachments/assets/6bb574d2-00e8-4c67-a3ce-879b8801c89d" />

   Output :

   <img width="713" height="73" alt="image" src="https://github.com/user-attachments/assets/5c269468-fdd5-4d80-b47b-edac6eda2359" />

   Contoh Lexical Closure :

   <img width="250" height="348" alt="image" src="https://github.com/user-attachments/assets/8a8e86e4-1f18-461c-8c86-ad6cef695634" />

   Output :

   <img width="699" height="90" alt="image" src="https://github.com/user-attachments/assets/50ca7d99-9f89-490f-b255-e1b9f0d77e6e" />

8. Jelaskan dengan contoh cara membuat return multiple value di Functions!

   Jawab :

   Dart tidak bisa langsung return lebih dari satu nilai, tapi bisa pakai List, Map, atau Record.

   a. List

   <img width="453" height="212" alt="image" src="https://github.com/user-attachments/assets/60654a05-7424-4be7-a062-446d5a027398" />

   Output :

   <img width="700" height="60" alt="image" src="https://github.com/user-attachments/assets/f1566d24-4e3e-4a98-9c9d-f2258f2ab225" />

   b. Map

   <img width="542" height="292" alt="image" src="https://github.com/user-attachments/assets/12d768cb-d477-4cc8-8bb3-7dae14c75280" />

   Output :

   <img width="708" height="69" alt="image" src="https://github.com/user-attachments/assets/2f8675e4-df22-4b4d-b0fe-0b4d2af821ba" />

   c. Record

   <img width="439" height="216" alt="image" src="https://github.com/user-attachments/assets/6911dd77-f53e-4640-8f65-c84bd5dc3afe" />

   Output :

   <img width="704" height="60" alt="image" src="https://github.com/user-attachments/assets/55b5fe56-a916-4cb3-b091-8b5bd363a516" />
