import 'base_pizza.dart';

void main(List<String> args) {
  // Now consider I want a crownCrust pizza with extra cheese
  BasePizza crownCrustCheesy = ExtraCheese(pizza: CrownCrust());
  //  ExtraCheese is thus now a wrapper class
  print(crownCrustCheesy.cost());
  // crownCrust + mushrooms
  BasePizza crownCrustMushrooms = Mushrooms(pizza: CrownCrust());
  print(crownCrustMushrooms.cost());

// now I want a crownCrust that has both extra cheese and mushrooms

// As Mushrooms and ExtraCheese both are decorators that
// `has a` BasePizza as well as `is a` BasePizza we can apply as much toppings as we want!
  BasePizza crownCrustSpecial =
      Mushrooms(pizza: ExtraCheese(pizza: CrownCrust()));

  print(crownCrustSpecial.cost());

// now I want a crown crust pizza with double extra cheese and single mushrooms toppings
  BasePizza crownCrustKing =
      Mushrooms(pizza: ExtraCheese(pizza: ExtraCheese(pizza: CrownCrust())));
  print(crownCrustKing.cost());

  //! so by this the decorator pattern helps us in reducing the classes
  //! where we need to enhance the features of related objects
}
