import 'car.dart';

void main(List<String> args) {
  Car c1 = Car();
  Car c2 = Car();

  print(c1.hashCode);
  print(c2.hashCode);
}