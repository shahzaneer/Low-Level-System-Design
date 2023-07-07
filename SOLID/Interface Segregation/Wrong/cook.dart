import 'restaurant.dart';

class Cook extends RestaurantEmployees {
  @override
  void cookFood() {
    print("Cooked the food");
  }

  @override
  void serveCustomers() {
    // not my responsibility
  }

  @override
  void washDishes() {
    // not my responsibility
  }
}
