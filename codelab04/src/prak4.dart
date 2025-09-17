void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];   
  print(list1);
  var list3 = [0, ...?list1]; 
  print(list3.length);

  // Tambahan: list berisi NIM
  var nim = ["2341720257"];
  var list4 = [...list, ...nim]; 
  print(list4);

  // Contoh promoActive true
  var promoActive = true;
  var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav1);

  // Contoh promoActive false
  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2);

  // Perbaikan: login harus didefinisikan
  var login = 'Manager';  
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav3);

  // Jika login bukan Manager
  login = 'User';
  var nav4 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav4);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
