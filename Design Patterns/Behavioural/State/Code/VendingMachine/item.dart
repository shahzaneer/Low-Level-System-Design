enum ItemType {COKE, PEPSI, REDBULL, JUICE, SODA}

class Item {
  ItemType type;
  int price;

  Item({
    required this.type,
    required this.price,
  });
}
