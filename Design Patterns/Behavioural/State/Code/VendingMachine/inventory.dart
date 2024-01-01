import 'item.dart';
import 'item_shelve.dart';

class Inventory {
  List<ItemShelf>? inventory = null;
  Inventory() {
    inventory = [];
  }

  void initialEmptyInventory() {
    int start_code = 101;
    for (int i = 0; i < inventory!.length; i++) {
      ItemShelf space = ItemShelf(code: start_code, soldOut: true);
      inventory![i] = space;
      start_code++;
    }
  }

  void addItem(Item item, int codeNumber) {
    for (ItemShelf itemShelf in inventory!) {
      if (itemShelf.code == codeNumber && itemShelf.soldOut) {
        itemShelf.item = item;
        itemShelf.soldOut = false;
      } else {
        throw Exception("Item already present cannot be added here");
      }
    }
  }
}
