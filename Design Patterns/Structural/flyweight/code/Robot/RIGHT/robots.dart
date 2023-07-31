// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class IRobot {
  void displayPosition({required int xCoordinate, required int yCoordinate});
}

class Sprite {}

class Humanoid implements IRobot {
  // Taking intrinsic data inside
  String type;
  Sprite sprite;

  Humanoid({
    required this.type,
    required this.sprite,
  });
  @override
  void displayPosition({required int xCoordinate, required int yCoordinate}) {}
}

class RoboticDog implements IRobot {
  String type;
  Sprite sprite;

  RoboticDog({
    required this.type,
    required this.sprite,
  });
  
  @override
  void displayPosition({required int xCoordinate, required int yCoordinate}) {}
}
