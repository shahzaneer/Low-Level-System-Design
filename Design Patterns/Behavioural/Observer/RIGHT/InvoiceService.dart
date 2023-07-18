import 'orderplaced.dart';

class InvoiceService implements OrderPlacedObserver {
  void generateInvoice() {
    print("invoice generated");
  }

  @override
  void orderPlaced() {
    generateInvoice();
  }
}
