void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Tambahkan nama & NIM
  gifts['nama'] = 'Salsabila Mahda';
  gifts['nim'] = '2341720257'; 

  nobleGases[99] = 'Salsabila Mahda';
  nobleGases[100] = '2341720257';

  mhs1['nama'] = 'Salsabila Mahda';
  mhs1['nim'] = '2341720257';

  mhs2[1] = 'Salsabila Mahda';
  mhs2[2] = '2341720257';

  // Print hasilnya
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
