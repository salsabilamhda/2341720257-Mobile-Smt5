void main() {
  var record = ('first', a: 2, b: true, 'last');
  print("Record awal: $record");

  // Contoh record integer
  var angka = (10, 20);
  print("Sebelum tukar: $angka");

  var hasil = tukar(angka);
  print("Sesudah tukar: $hasil");

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Salsabila Mahda', 2341720257);
  print("Mahasiswa: $mahasiswa");

  var mahasiswa2 = ('first', a: "Salsabila Mahda - 2341720257", b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a);  // Prints 'Salsabila Mahda - 2341720257'
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}


