abstract class BasePizza {
  int cost();
}

// Consider we have three different types of Pizzas

class ChickenTikka extends BasePizza {
  @override
  int cost() {
    return 100;
  }
}

class ChickenFajita extends BasePizza {
  @override
  int cost() {
    return 120;
  }
}

class CrownCrust extends BasePizza {
  @override
  int cost() {
    return 200;
  }
}

// Ab hmare pas two extra toppings bhi hain
// ! Mushrooms and ExtraCheese

abstract class ExtraToppings extends BasePizza {}

//! Topping classes will "has a" relation with the pizza and they will decorate the cost

class Mushrooms extends ExtraToppings {
  BasePizza pizza;

  Mushrooms({
    required this.pizza,
  });

  @override
  int cost() {
    return pizza.cost() + 20;
  }
}

class ExtraCheese extends ExtraToppings {
  BasePizza pizza;

  ExtraCheese({
    required this.pizza,
  });

  @override
  int cost() {
    return pizza.cost() + 30;
  }
}

// no need to make the permutation and combination of classes for toppings



