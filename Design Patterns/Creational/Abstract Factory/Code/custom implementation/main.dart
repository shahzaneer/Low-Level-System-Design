import 'shape.dart';

void main(List<String> args) {
  FactoryProvider fp = FactoryProvider();
  Factory f = fp.getFactory(isRounded: true);
  Shape? shape = f.getShape(shapeYouWant: "circle");
}
