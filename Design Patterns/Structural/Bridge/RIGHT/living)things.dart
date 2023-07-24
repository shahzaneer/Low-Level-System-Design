// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class LivingThings {
  void breathing();
}

// Abstraction Implementation Classes
class Man extends LivingThings {
  BreathingProcess breathingProcess;

  Man({
    required this.breathingProcess,
  });

  @override
  void breathing() {
    breathingProcess.breath();
  }
}

class Fish extends LivingThings {
  BreathingProcess breathingProcess;

  Fish({
    required this.breathingProcess,
  });

  @override
  void breathing() {
    breathingProcess.breath();
  }
}

class Tree extends LivingThings {
  BreathingProcess breathingProcess;

  Tree({
    required this.breathingProcess,
  });

  @override
  void breathing() {
    breathingProcess.breath();
  }
}

abstract class BreathingProcess {
  void breath();
}

// Implementor Classes
class WaterBreathing implements BreathingProcess {
  @override
  void breath() {}
}

class LandBreathing implements BreathingProcess {
  @override
  void breath() {}
}

class TreeBreathing implements BreathingProcess {
  @override
  void breath() {}
}

// it will do what Strategy do!
// it will decouple the abstration and implementation
//! HOW?
// let us consider I want to add another Breathing process Will it be dependent on LivingThings' Implementors ?
// NO !
// I want to add a new method to the livingThings' Implementors Will it will effect my code?
// NO !

// So we did loose Coupling which helped us in writing scalable code

abstract class EatFood {
  void eatFood();
}

class AlienEatingFood implements EatFood {
  @override
  void eatFood() {
    // EAT 40 KG green vegetables etc
  }
}

class Alien extends LivingThings {
  BreathingProcess breathingProcess;
  EatFood eatFood;

  Alien({
    required this.breathingProcess,
    required this.eatFood,
  });

  @override
  void breathing() {
    breathingProcess.breath();
  }

  void fooding() {
    eatFood.eatFood();
  }
}


// So I added a new Implemtor without affecting the LivingThing class
// I added new Functionality as well.