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
