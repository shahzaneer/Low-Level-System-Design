import '../coin.dart';
import '../item.dart';
import '../state.dart';
import '../vending_machine.dart';

class IdleState implements State{
  @override
  void chooseProduct(VendingMachine machine, int codeNumber) {
    // TODO: implement chooseProduct
  }

  @override
  void clickOnInsertCoinButton(VendingMachine machine) {
    // TODO: implement clickOnInsertCoinButton
  }

  @override
  void clickOnProductSelectionButton(VendingMachine machine) {
    // TODO: implement clickOnProductSelectionButton
  }

  @override
  Item dispenseProduct(VendingMachine machine, int codeNumber) {
    // TODO: implement dispenseProduct
    throw UnimplementedError();
  }

  @override
  int getChange(int returnChangeMoney) {
    // TODO: implement getChange
    throw UnimplementedError();
  }

  @override
  void insertCoin(VendingMachine machine, Coin coin) {
    // TODO: implement insertCoin
  }

  @override
  List<Coin> refundAllMoney(VendingMachine machine) {
    // TODO: implement refundAllMoney
    throw UnimplementedError();
  }

  @override
  void updateInventory(VendingMachine machine, Item item, int codeNumber) {
    // TODO: implement updateInventory
  }
}