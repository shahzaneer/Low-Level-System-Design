import 'orderplaced.dart';

class Amazon {
  List<OrderPlacedObserver> orderplacedObservers = [];

  void placedOrderInAmazon() {
    for (OrderPlacedObserver observerServices in orderplacedObservers) {
      observerServices.orderPlaced();
    }
  }

  void addObserver(OrderPlacedObserver observer) {
    orderplacedObservers.add(observer);
  }

  void removeObserver(OrderPlacedObserver observer) {
    orderplacedObservers.remove(observer);
  }

  void seeObservers() {
    print(orderplacedObservers.toString());
  }
}
