import 'bike.dart';

class Bicycle implements Bike {
  late int speed;

  @override
  void accelerate() {
    speed += 10;
  }

  @override
  void turnOnEngine() {
    throw Exception("engine cycle main kb hota hai bhai");
  }
}
