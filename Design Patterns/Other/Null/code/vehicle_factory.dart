import 'car.dart';
import 'null.dart';
import 'vehicle.dart';

class VehicleFactory {
  static Vehicle getVehicleObject({required name}) {
    if (name == "Car") {
      return Car();
    }
    return Null();
  }
}
