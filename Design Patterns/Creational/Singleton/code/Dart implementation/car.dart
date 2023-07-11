class Car {
  // eager way of creating singleton
  static final Car _car = Car._internal();

  factory Car() {
    return _car;
  }

  Car._internal(){}
}





// dart is single threaded so no issue with lazy way
