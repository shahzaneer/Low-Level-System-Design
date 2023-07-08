import 'ShapeFactory.dart';
import 'shape.dart';

void main(List<String> args) {
  ShapeFactory sf = new ShapeFactory();
  Shape? circle = sf.ShapeMaker(shapeYouWant: "circle");
  Shape? rectangle = sf.ShapeMaker(shapeYouWant: "rectangle");
  Shape? square = sf.ShapeMaker(shapeYouWant: "square");

  circle!.draw();
  square!.draw();
  rectangle!.draw();
}
