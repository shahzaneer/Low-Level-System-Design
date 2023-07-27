import 'vehicle.dart';
import 'vehicle_factory.dart';

void main(List<String> args) {
  Vehicle car = VehicleFactory.getVehicleObject(name: "Car");
  Vehicle horse = VehicleFactory.getVehicleObject(name: "horse");

  print(car.getEngineCapacity());
  print(car.petrolCapacity());
  // NULL Object will hande it
  print(horse.getEngineCapacity());
  print(horse.petrolCapacity());
}
