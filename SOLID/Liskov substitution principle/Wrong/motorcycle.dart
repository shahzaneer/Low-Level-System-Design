import 'bike.dart';

class Motocycle implements Bike {
  late bool isEngineOn;
  late int speed;
  @override
  void accelerate() {
    speed += 10;
  }

  @override
  void turnOnEngine() {
    isEngineOn = true;
  }
}
