void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);       
  print(list2);      
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1); 

  var list3 = [0, ...?list1];
  print(list3);      
  print(list3.length);

  var listNIM = [..."2341720257".split("")]; 
  print(listNIM);
}
