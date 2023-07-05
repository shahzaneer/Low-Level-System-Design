import '../../Single Responsibility/Wrong/invoice.dart';

abstract class Dao {
  Invoice _invoice;
  Dao(this._invoice);
  saveData();
}


// All Other classes where data will be saved will implement this method 
// this could also be done with interfaces but dart don't have interfaces
