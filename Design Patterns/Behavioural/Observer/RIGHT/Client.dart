import 'InvoiceService.dart';
import 'Amazon.dart';
import 'EmailService.dart';
import 'SMSService.dart';

void main(List<String> args) {
  Amazon amazon = Amazon();

  var observer1 = new EmailService();
  var observer2 = new SMSService();
  var observer3 = new InvoiceService();

  amazon.addObserver(observer1);
  amazon.addObserver(observer2);
  amazon.addObserver(observer3);

  amazon.placedOrderInAmazon();
  amazon.seeObservers();
  // 3 observers add kiay tou 3 services call huin

  amazon.removeObserver(observer1);
  // aik observer nikaal dya tou wo service bhi call nhi hui

  amazon.placedOrderInAmazon();
  amazon.seeObservers();
}
