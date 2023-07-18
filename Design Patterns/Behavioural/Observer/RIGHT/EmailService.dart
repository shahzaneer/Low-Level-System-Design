import 'orderplaced.dart';

class EmailService implements OrderPlacedObserver {
  void sendEmail() {
    print("send email");
  }

  @override
  void orderPlaced() {
    sendEmail();
  }
}
