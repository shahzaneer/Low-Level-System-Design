import 'robot_factory.dart';
import 'robots.dart';

void main(List<String> args) {
  IRobot? humanoid1 = RobotFactory.getRebot(robotType: "humanoid");
  IRobot? humanoid2 = RobotFactory.getRebot(robotType: "humanoid");
  IRobot? roboticDog1 = RobotFactory.getRebot(robotType: "roboticdog");
  IRobot? roboticDog2 = RobotFactory.getRebot(robotType: "roboticdog");

  humanoid1!.displayPosition(xCoordinate: 1, yCoordinate: 1);
  humanoid2!.displayPosition(xCoordinate: 2, yCoordinate: 2);
  roboticDog1!.displayPosition(xCoordinate: 3, yCoordinate: 3);
  roboticDog2!.displayPosition(xCoordinate: 4, yCoordinate: 4);
}
