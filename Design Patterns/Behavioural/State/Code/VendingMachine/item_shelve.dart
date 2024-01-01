import 'item.dart';

class ItemShelf {
  int code;
  Item? item;
  bool soldOut;

  ItemShelf({
    required this.code,
    required this.soldOut,
  });
}
