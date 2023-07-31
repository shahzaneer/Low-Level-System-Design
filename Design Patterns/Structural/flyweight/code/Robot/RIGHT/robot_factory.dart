import 'robots.dart';

class RobotFactory {
  static Map<String, IRobot> cachedRobots = Map<String, IRobot>();

  static IRobot? getRebot({required String robotType}) {
    if (cachedRobots.containsKey(robotType)) {
      print("Cache main mil gya Object");
      return cachedRobots[robotType];
    } else {
      if (robotType == "humanoid") {
        Sprite sprite = Sprite();
        IRobot humanoid = Humanoid(type: "humanoid", sprite: sprite);
        print("here first time the constructor is called HUMANOID");
        cachedRobots[robotType] = humanoid;
        return cachedRobots[robotType];
      } else if (robotType == "roboticdog") {
        Sprite sprite = Sprite();
        IRobot roboticdog = RoboticDog(type: "roboticdog", sprite: sprite);
        print("here first time the constructor is called ROBOTICDOG");

        cachedRobots[robotType] = roboticdog;
        return cachedRobots[robotType];
      }
    }
    return null;
  }
}
