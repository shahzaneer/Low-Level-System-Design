class Shape {
  String? shapeName;

  void draw() {
    print("I am a $shapeName");
  }

  Shape({required this.shapeName}) {}

// These Factory Methods helps us to make the design more
// clean and modular

  factory Shape.circle() {
    return Shape(shapeName: "circle");
  }
  factory Shape.rectangle() {
    return Shape(shapeName: "rectangle");
  }
  factory Shape.square() {
    return Shape(shapeName: "square");
  }
}

void main(List<String> args) {
  // More clean design approach better than the custom one
  Shape circle = Shape.circle();
  Shape rectangle = Shape.rectangle();
  Shape square = Shape.square();

  circle.draw();
  square.draw();
  rectangle.draw();
}
