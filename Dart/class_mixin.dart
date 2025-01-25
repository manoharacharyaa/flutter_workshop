void main() {
  var car = Car(wheels: 4, doors: 4, color: 'Black');
  car.showCarInfo();

  ElectricCar(wheels: 4, doors: 2, color: 'Red')
    ..showCarInfo()
    ..charge()
    ..showBatteryStatus()
    ..showCarInfo();
  ;
}

class Vehicle {
  int wheels;
  int doors;
  String color;

  Vehicle({
    required this.wheels,
    required this.doors,
    required this.color,
  });

  void showInfo() {
    print("This vehicle has $wheels wheels, $doors doors, and is $color.");
  }
}

class Car extends Vehicle {
  bool hasAc;

  Car({
    required int wheels,
    required int doors,
    required String color,
    this.hasAc = false,
  }) : super(wheels: wheels, doors: doors, color: color);

  void showCarInfo() {
    showInfo();
    print("Air conditioning: ${hasAc ? 'Yes' : 'No'}");
  }
}

mixin Electric {
  int batteryCapacity = 0;

  void charge() {
    print("Charging the battery...");
  }

  void showBatteryStatus() {
    print("Battery capacity: $batteryCapacity%");
  }
}

mixin Convertible {
  bool isRoofOpen = false;

  void toggleRoof() {
    isRoofOpen = !isRoofOpen;
    print(isRoofOpen ? "The roof is open." : "The roof is closed.");
  }
}

class ElectricCar extends Car with Electric, Convertible {
  ElectricCar({
    required int wheels,
    required int doors,
    required String color,
    bool hasAc = false,
    int batteryCapacity = 100,
  }) : super(
          wheels: wheels,
          doors: doors,
          color: color,
          hasAc: hasAc,
        ) {
    this.batteryCapacity = batteryCapacity;
  }

  void showFullInfo() {
    showCarInfo();
    showBatteryStatus();
    toggleRoof();
  }
}
