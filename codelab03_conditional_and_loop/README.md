# A. PRAKTIKUM 1
 1. Langkah 1
    
        String test = "test2";
        if (test == "test1") {
        print("Test1");
        } else If (test == "test2") {
        print("Test2");
        } Else {
        print("Something else");
        }

        if (test == "test2") print("Test2 again");

 2. Langkah 2
       
       <img width="489" height="328" alt="img6" src="https://github.com/user-attachments/assets/84d96f72-5b1b-4827-ab15-3bca2536b958" />

    Terjadi error, karena kata kunci if, else if, dan else harus lowercase. Jadi If dan Else dianggap error. 

3. Langkah 3
   
   <img width="289" height="99" alt="img7" src="https://github.com/user-attachments/assets/13e8daf6-1245-474c-ac73-50f6a1b04106" />

   Terjadi error karena kondifi if harus berupa boolean, bukan string. 

   Perbaikan Kode :

           void main() {
          String test = "test2";
        
          if (test == "test1") {
            print("Test1");
          } else if (test == "test2") {
            print("Test2");
          } else {
            print("Something else");
          }
        
          if (test == "test2") print("Test2 again");
        
          String status = "true";
          if (status == "true") {
            print("Kebenaran");
          } else {
            print("Bukan kebenaran");
          }
        }

    Output :
   
   <img width="673" height="221" alt="image" src="https://github.com/user-attachments/assets/14640f9e-af2d-4ae8-8a2f-dc7e797bf024" />
 

# B. PRAKTIKUM 2
1. Langkah 1
   
        while (counter < 33) {
        print(counter);
        counter++;
        }

3. Langkah 2
   
     <img width="311" height="169" alt="img4" src="https://github.com/user-attachments/assets/90fb5118-929c-4050-9b19-013d52c63731" />

   Terjadi error, karena variable counter belum pernah dideklarasikan sebelum dipakai. 

    Perbaikan Kode : 

        void main() {
        int counter = 0;
    
        while (counter < 33) {
            print(counter);
            counter++;
        }
        }

    Output :
   
   <img width="772" height="280" alt="img1" src="https://github.com/user-attachments/assets/de096231-c3fb-44d1-8cd9-cc007f0a6111" />


4. Langkah 3
   
    <img width="758" height="236" alt="img5" src="https://github.com/user-attachments/assets/86931d05-5073-420e-aee9-ff83d4474841" />

    Program mencetak angka 0-32 dengan while, lalu melanjutkan cetak 33-76 dengan do-while sebelum berhenti saat counter = 77. 

# C. PRAKTIKUM 3
1. Langkah 1
   
        for (Index = 10; index < 27; index) {
        print(Index);
        }

2. Langkah 2
   
   <img width="463" height="193" alt="img2" src="https://github.com/user-attachments/assets/fd9326ad-7e0b-4c16-9ee7-fd477494da4c" />

   Terjadi Error karena variabel Index/index belum dideklarasikan dan penamaan tidak konsisten, serta bagian increment pada for salah, seharusnya index++.
   
   Perbaikan Kode :
    
        void main() {
        for (int index = 10; index < 27; index++) {
            print(index);
        }
        }

   Output :
   <img width="901" height="397" alt="image" src="https://github.com/user-attachments/assets/7ee7ad73-bb35-46a6-996c-99f5b217c95b" />


4. Langkah 3
   
   <img width="515" height="209" alt="img3" src="https://github.com/user-attachments/assets/eacff11d-d164-4617-99e6-2d2289bc3388" />

   Terjadi error karena keyword ditulis dengan huruf besar (If, Else If) dan variabel tidak konsisten (index vs Index), sehingga Dart tidak mengenali keduanya.
    
   Perbaikan Kode :
   
        void main() {
        for (int index = 10; index < 27; index++) {
            if (index == 21) break;
            else if (index > 1 && index < 7) continue;
            print(index);
        }
        }

   Output :
   <img width="894" height="296" alt="image" src="https://github.com/user-attachments/assets/132a4579-11f9-426a-ae9f-930fcf69d071" />


# D. TUGAS PRAKTIKUM
Kode Program :
    
    void main() {
    String nama = "Salsabila Mahda";
    String nim = "2341720257";  

    for (int i = 0; i <= 201; i++) {
        if (isPrima(i)) {
        print("$i adalah bilangan prima -> $nama ($nim)");
        } else {
        print(i);
        }
    }
    }

    bool isPrima(int n) {
    if (n < 2) return false; 
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
    }

Output : 

<img width="962" height="657" alt="image" src="https://github.com/user-attachments/assets/40d30591-2b43-46af-a654-a0a93e1d9ed5" />

<img width="635" height="272" alt="img8" src="https://github.com/user-attachments/assets/d9ae3f2d-e23b-48c4-ae94-88ee20611069" />
