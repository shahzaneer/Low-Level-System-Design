import 'orderplaced.dart';

class SMSService implements OrderPlacedObserver {
  void sendSMS() {
    print("Send SMS");
  }

  @override
  void orderPlaced() {
    sendSMS();
  }
}
