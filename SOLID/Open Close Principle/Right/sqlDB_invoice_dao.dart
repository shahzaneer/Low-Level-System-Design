import 'invoice_dao.dart';

class SQLInvoiceDao extends Dao{
  SQLInvoiceDao(super.invoice);

  @override
  saveData() {
    // Yanan SQL main save krne ka option deden
    throw UnimplementedError();
  }

}

// Mustaqbil main kahein bhi jb apko data ko save krna ka new option ayega tou ap aik new class 
// bana kr kaam krlengay na kay issi class ko modify krengay

// this is the power of abstract classes
// this is the beauty of OPEN CLOSE Principle