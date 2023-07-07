import 'restaurant.dart';

class Waiter implements RestaurantEmployees {
  @override
  void cookFood() {
    // Not my responsibility
  }

  @override
  void serveCustomers() {
    print("serve Good Food");
  }

  @override
  void washDishes() {
    // not my responsibility
  }
}
