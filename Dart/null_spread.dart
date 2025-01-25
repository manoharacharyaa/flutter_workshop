void main() {
  List<int>? list1 = null;
  List<int> combined = [0, ...?list1, 7, 8, 9];
  print(combined);
}
