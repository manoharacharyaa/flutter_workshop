void main() {
  var list1 = [1, 2, 3, 4];
  var list2 = [1, 2, 3, 4];
  var list3 = [1, 2, 3, 4];
  var list4 = [1, 2, 3, 4];
  var list5 = [1, 2, 3, 4];
  var list6 = [1, 2, 3, 4];

  list1.remove(2);
  print(list1);

  list2.removeAt(2);
  print(list2);

  list3.removeWhere((num) => num % 2 != 0);
  print(list3);

  list4.clear();
  print(list4);

  list5.removeLast();
  print(list5);

  list6.removeRange(1, 3);
  print(list6);
}
