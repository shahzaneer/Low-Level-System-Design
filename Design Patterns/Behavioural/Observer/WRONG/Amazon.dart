import 'EmailService.dart';
import 'InvoiceService.dart';
import 'SMSService.dart';

class Amazon {
  // tightly coupled and is depending upon the services
  EmailService _emailService;
  InvoiceService _invoiceService;
  SMSService _smsService;

  Amazon(this._emailService, this._invoiceService, this._smsService);

  void orderPlace() {
    _emailService.sendEmail();
    _smsService.sendSMS();
    _invoiceService.generateInvoice();
  }
}
