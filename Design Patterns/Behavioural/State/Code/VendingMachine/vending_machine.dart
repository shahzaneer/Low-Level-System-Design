import 'coin.dart';
import 'inventory.dart';
import 'state.dart';

class VendingMachine {

  State vendingMachineState;
  Inventory inventory;
  List<Coin> coinList;
  
  VendingMachine({
    required this.vendingMachineState,
    required this.inventory,
    required this.coinList,
  });

  
}
