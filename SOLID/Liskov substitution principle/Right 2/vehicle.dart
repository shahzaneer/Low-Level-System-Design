// Every class should be in different file
// I have used a single file for the sake of simplicity here
// Solution to this problem is to make generic code class
// which consists of the most basic code

class Vehicle {
  int noOfWheels() => 2;
  // bool? hasEngine() => true;
  // As not every vehicle would have engine
}

class VehicleEngine extends Vehicle {
  bool? hasEngine() => true;
}

class Car extends VehicleEngine {
  @override
  int noOfWheels() {
    return 4;
  }
}

class Bike extends VehicleEngine {}

// Now it is extending the most basic vehicle class
class Bicycle extends Vehicle {}

// client Code
void main(List<String> args) {
  List<Vehicle> vehiclesList = [];
  vehiclesList.add(Bike());
  vehiclesList.add(Car());
  vehiclesList.add(Bicycle());

  for (var vehicle in vehiclesList) {
    // print(vehicle.hasEngine().toString());
    // it will be a compile time error which you can percieve easily
  }

  // VehicleEngine myVehicle =  new Bicycle(); Compile time error ✔
}
