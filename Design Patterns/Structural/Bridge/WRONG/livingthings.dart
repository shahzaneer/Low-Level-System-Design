abstract class LivingThings {
  void breathing();
}

class Tree implements LivingThings {
  @override
  void breathing() {
    // Inhale C02 through leaves
    // exhale 02
  }
}

class Man implements LivingThings {
  @override
  void breathing() {
    // Inhale 02 through nose
    // exhale C02
  }
}

class Fish implements LivingThings {
  @override
  void breathing() {
    // Inhale 02 through gills in water
    // exhale c02
  }
}

// The problem here is if you want to make another breathingprocess you need to make a
// class which means you are dependent on the abstraction
// so it is tight coupling


