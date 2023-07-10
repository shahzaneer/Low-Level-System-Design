abstract class Shape {
  void draws();
}

// TYPE 1
class Rectangle implements Shape {
  @override
  void draws() {
    print("rectange");
  }
}

class Square implements Shape {
  @override
  void draws() {
    print("square");
  }
}

// Type 2
class RoundedRectangle implements Shape {
  @override
  void draws() {
    print("rounded Rectangle");
  }
}

class RoundedSquare implements Shape {
  @override
  void draws() {
    print("rounded square");
  }
}

abstract class Factory {
  Shape? getShape({required String shapeYouWant});
}

// Now making two factories
// each for specific type

class NormalFactory implements Factory {
  @override
  Shape? getShape({required String shapeYouWant}) {
    switch (shapeYouWant) {
      case "rectangle":
        return Rectangle();
      case "square":
        return Square();
    }
    return null;
  }
}

class RoundedFactory implements Factory {
  @override
  Shape? getShape({required String shapeYouWant}) {
    switch (shapeYouWant) {
      case "square":
        return RoundedSquare();
      case "rectangle":
        return RoundedRectangle();
    }

    return null;
  }
}

class FactoryProvider {
  Factory getFactory({required bool isRounded}) {
    switch (isRounded) {
      case true:
        return RoundedFactory();
      case false:
        return NormalFactory();
    }
  }
}



