void main() {
  Animal().move();
  Fish().move();
}

class Animal {
  void move() {
    print('changed position');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print('by swiming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Changing position by swimming');
  }
}

mixin CanFly {
  void fly() {
    print('Change position by flying');
  }
}

class Duck with CanSwim, CanFly {
  @override
  void fly() {
    super.fly();
  }

  @override
  void swim() {
    super.swim();
  }
}
