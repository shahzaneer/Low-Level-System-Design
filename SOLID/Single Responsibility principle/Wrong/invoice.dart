import 'marker.dart';

class Invoice {
  Marker _marker;
  int quantity;

  Invoice(this._marker, this.quantity);

  calculateInvoice() {
    // aik maqsad
    return _marker.price * quantity;
  }

  printInvoice() {
    //dusra maqsad
  }

  saveDB() {
    // teesra Maqsad
  }
}


// S is not followed
