import 'Amazon.dart';
import 'EmailService.dart';
import 'InvoiceService.dart';
import 'SMSService.dart';

void main(List<String> args) {
  Amazon amazon = Amazon(EmailService(), InvoiceService(), SMSService());

  amazon.orderPlace();
}

// Approach is breaking
//  Dependency Inversion principle
// Breaking open close principle & code change, re-deployment

