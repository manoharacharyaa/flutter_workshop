void main() {
  var list1 = [1, 3, 4];
  var list2 = [1, 5];

  list1.insert(1, 2);
  print(list1);

  list2.insertAll(1, [2, 3, 4]);
  print(list2);
}
