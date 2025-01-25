void main() {
  Map<String, int> map1 = {
    'a': 1,
    'b': 2,
  };

  Map<String, int> map2 = {
    'c': 2,
    'd': 4,
  };

  Map<String, int> combinedMap = {...map1, ...map2};

  print(combinedMap);
}
