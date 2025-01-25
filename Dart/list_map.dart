//Combining values of List & Map

void main() {
  List<int> list = [1, 2, 3, 4];

  Map<String, int> map = {
    'a': 5,
    'b': 6,
    'c': 7,
    'd': 8,
  };

  List<dynamic> combined = [
    ...list,
    ...map.entries.map(
      (e) => '$e.value',
    )
  ];

  print(combined);
}
