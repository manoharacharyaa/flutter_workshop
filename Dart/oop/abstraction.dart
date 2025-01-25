abstract class Vehicle {
  // Abstract method (no implementation)
  void start();

  // Concrete method
  void stop() {
    print("Vehicle stopped.");
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car started.");
  }
}

void main() {
  Car car = Car();
  car.start(); // Output: Car started.
  car.stop(); // Output: Vehicle stopped.
}
