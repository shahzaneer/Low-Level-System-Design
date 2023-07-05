import '../Wrong/invoice.dart';

class InvoiceDao {
  Invoice _invoice;

  InvoiceDao(this._invoice);

  saveToDB() {
    // aik maqsad
    // lekin ager mjhe isse DB ki bjaye File main save krna hai ya mongoDB
    // main save krna hai tou kia hoga?
    // mjhe isse modify krna hoga
    // lekin Open close principle k mutabiq hmari classes modify nhi honi chahiayn
    // Extend hosktin hain
    // therefore it is wrong according to OPEN CLOSE PRINCIPLE
  }
}
