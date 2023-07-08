import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';
import 'square.dart';

//! Shape Factory is actually a Handler class here
//! it is holding the factory constructor calls

// IT IS A FACTORY THAT ENABLES YOU TO MAKE
// OBJECTS OF YOUR SPECIFIC CHOICE

class ShapeFactory {
  Shape? ShapeMaker({required String shapeYouWant}) {
    switch (shapeYouWant) {
      case "rectangle":
        return Rectangle();
      case "circle":
        return Circle();
      case "square":
        return Square();
    }

    return null;
  }
}
