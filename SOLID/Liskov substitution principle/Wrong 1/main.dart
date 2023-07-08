import 'bicycle.dart';
import 'bike.dart';

void main(List<String> args) {
  Bike mycycle = Bicycle();
  // Bike is a parent type whearas the object is the sub type Bicycle
  mycycle.turnOnEngine();
  // it will break the code yani sub type k object ne parent
  // ki capabilities ko break krdia!

  // how to solve such problems?
  // Make different interfaces for different functionalities
}
