void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];

  List<int> combined = [...list1, ...list2];
  print(combined);

  List<int> combinedList({List<int>? list1, List<int>? list2}) {
    return [...?list1, ...?list2];
  }

  print(combinedList(list1: [11, 12, 13], list2: [14, 15, 16]));
}
