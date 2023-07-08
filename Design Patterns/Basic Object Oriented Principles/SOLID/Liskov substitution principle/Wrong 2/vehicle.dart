// Every class should be in different file
// I have used a single file for the sake of simplicity here

class Vehicle {
  int noOfWheels() => 2;
  bool? hasEngine() => true;
}

class Car extends Vehicle {
  @override
  int noOfWheels() {
    return 4;
  }
}

class Bike extends Vehicle {}

class Bicycle extends Vehicle {
  @override
  bool? hasEngine() {
    return null;
  }
}

// client Code
void main(List<String> args) {
  List<Vehicle> vehiclesList = [];
  vehiclesList.add(Bike());
  vehiclesList.add(Car());
  vehiclesList.add(Bicycle());

  for (var vehicle in vehiclesList) {
    // if (vehicle.hasEngine() == null) throw Exception("null aagya");
    print(vehicle.hasEngine().toString());
  }
}


// Problem parent class k object main jb child class k constructor
// pass kiay tou wo completely resolve nhi hopaye
// code break hogya

