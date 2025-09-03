// Kode Salah
/* void main() {
  String nama = null;  
  print(nama);

  // nama = null; //  Error, karena String tidak boleh null
}*/


// Kode Benar
/* void main() {
  String nama = "salsa";
  print(nama);

  // nama = null; //  Error, karena String tidak boleh null
}*/

// atau ditandai dengan ? 
void main() {
  String? nama; // Variabel boleh null
  print(nama);  // Output: null

  nama = "Salsa";
  print(nama);  // Output: Salsa
}
