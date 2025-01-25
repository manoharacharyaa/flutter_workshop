void main() {
  var list = [1, 2, 3, 4, 5, 6];

  List<int> filteredList = list.where((i) => i % 2 == 0).toList();

  print(filteredList);
}
