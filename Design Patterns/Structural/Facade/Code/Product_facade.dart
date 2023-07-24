// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'invoice.dart';
import 'notification.dart';
import 'payment.dart';
import 'product.dart';

class ProductFacade {
  // Facade Layer has `SystemComplexities classes`
  // Facade layer has Invoice , Notification, Payment and Product

  Invoice invoice;
  Notifications notifications;
  Payment payment;
  Product product;

  // ProductFacade({
  //   // Facade is considered to initialize the constructors
  //   required this.invoice,
  //   required this.notifications,
  //   required this.payment,
  //   required this.product,
  // });

  ProductFacade({required int productID})
      : invoice = Invoice(),
        payment = Payment(),
        notifications = Notifications(),
        product = Product(productId: productID);

  void sellProduct({required int productID}) {
    // facade is considered to deal with the inner complexities
    notifications.notify();
    invoice.printInvoice();
    payment.payment();
    product..productId = productID;
  }
}
