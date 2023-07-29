abstract class Sprite {}

class HumanSprite implements Sprite {}

class RobotSprite implements Sprite {}

class Robot {
  int xCoordinate; // 4 Bytes
  int yCoordinate; //4 Bytes
  String type;    //8 bytes (let us consider 8 characters each of one byte)
  Sprite sprite; // 30 kB object (heavy tbh)
  
  Robot({
    required this.xCoordinate,
    required this.yCoordinate,
    required this.type,
    required this.sprite,
  });
}

void main(List<String> args) {
  for (int i = 0; i < 500000; i++) {
    new Robot(
        xCoordinate: i + 1,
        yCoordinate: i + 1,
        type: "robotic",
        sprite: RobotSprite());
  }

  for (int i = 0; i < 500000; i++) {
    new Robot(
        xCoordinate: i + 1,
        yCoordinate: i + 1,
        type: "Humanoid",
        sprite: HumanSprite());
  }
}

