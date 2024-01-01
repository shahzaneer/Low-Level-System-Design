import 'coin.dart';
import 'item.dart';
import 'vending_machine.dart';

abstract class State {
  // State main sb methods define krlene hain jo system main use hoskte hain
  void clickOnInsertCoinButton(VendingMachine machine);
  void clickOnProductSelectionButton(VendingMachine machine);
  void insertCoin(VendingMachine machine, Coin coin);
  void chooseProduct(VendingMachine machine, int codeNumber);
  int getChange(int returnChangeMoney);
  Item dispenseProduct(VendingMachine machine, int codeNumber);
  List<Coin> refundAllMoney(VendingMachine machine);
  void updateInventory(VendingMachine machine, Item item, int codeNumber);
}

//! Now we have to define the action(concrete) classes on particular states
// 1) Idle State
// 2) HasMoney State
// 3) Selection State
// 5)FullRefund State
// 4) Dispense State
// We will make these concrete classes

