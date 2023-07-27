import 'vehicle.dart';

class Car implements Vehicle {
  @override
  int getEngineCapacity() {
    return 3000;
  }

  @override
  int petrolCapacity() {
    return 2500;
  }

}
