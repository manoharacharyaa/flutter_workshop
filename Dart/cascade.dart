void main() {
  //with cascade
  var cascade = Person()
    ..name = 'Manohar'
    ..age = 21
    ..setDetails('Manohar', 21);

  //without cascade
  var person = Person();
  person.name = 'Alice';
  person.age = 25;
  person.setDetails('Alice', 25);

  print('${cascade.name}, ${cascade.age}');
  print('${person.name}, ${person.age}');
}

class Person {
  String name = '';
  int age = 0;

  void setDetails(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

//Advantages of Cascade notation
//Do not create multiple instance of a class
// Reduce the variable usageand use only single variable
// Helps in overall memory saving