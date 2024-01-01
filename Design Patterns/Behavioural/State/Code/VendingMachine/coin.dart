class Coin {
  int value;

  Coin({
    required this.value,
  });

  factory Coin.penny() {
    return Coin(value: 1);
  }

  factory Coin.nickel() {
    return Coin(value: 5);
  }

  factory Coin.dime() {
    return Coin(value: 10);
  }

  factory Coin.quarter() {
    return Coin(value: 25);
  }
}
