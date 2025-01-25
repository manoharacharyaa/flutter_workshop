class Person {
  // Private property (encapsulated)
  String? _name;

  // Public method to access private property
  String getName() {
    return _name ?? '';
  }

  // Public method to modify private property
  void setName(String name) {
    _name = name;
  }
}

void main() {
  Person person = Person();
  person.setName("Alice");
  print(person.getName()); // Output: Alice
}
