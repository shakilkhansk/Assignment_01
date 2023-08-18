// Define the Car class
class Car {
  // Properties of the Car class
  String brand;
  String model;
  int year;
  double milesDriven = 0; // Initialized to 0

  // Static property to track the number of Car objects created
  static int numberOfCars = 0;

  // Constructor to initialize the brand, model, and year
  Car(this.brand, this.model, this.year) {
    numberOfCars++; // Increment the count of cars
  }

  // Method to simulate driving and increase miles driven
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get the total miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand of the car
  String getBrand() {
    return brand;
  }

  // Method to get the model of the car
  String getModel() {
    return model;
  }

  // Method to get the manufacturing year of the car
  int getYear() {
    return year;
  }

  // Method to calculate and return age
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create instances of the Car class
  Car car1 = Car("Toyota", "Camry", 2020);
  Car car2 = Car("Honda", "Civic", 2018);
  Car car3 = Car("Ford", "F-150", 2015);

  // Simulate driving for each car
  car1.drive(10000);
  car2.drive(8000);
  car3.drive(15000);

  // Print car information and total number of cars created
  print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven().toInt()} Age: ${car1.getAge()}");
  print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven().toInt()} Age: ${car2.getAge()}");
  print("Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven().toInt()} Age: ${car3.getAge()}");

  // Print the total number of cars created
  print("Total number of cars created: ${Car.numberOfCars}");
}
