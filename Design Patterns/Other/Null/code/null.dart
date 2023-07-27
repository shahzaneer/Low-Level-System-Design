import 'vehicle.dart';

// default behaviour
class Null implements Vehicle {
  @override
  int getEngineCapacity() {
    return 0;
  }

  @override
  int petrolCapacity() {
    return 0;
  }
}
