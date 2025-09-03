// Late Variable
/* void main() {
  late String nama;

  // print(nama); // Error runtime: nama belum diinisialisasi

  nama = "Salsa";
  print(nama); // Output: Salsa
} */


// Lazy Initialization 

void main() {
  late String nama = getNama();
  print(nama); // otomatis ada nilainya
}

String getNama() => "Salsa"; 
