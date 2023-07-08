class CalculatePower {
  int calPower(int base, int power) {
    int result = 1;
    for (int i = 0; i < power; i++) {
      result = result * base;
    }
    return result;
  }
}

void main(List<String> args) {
  CalculatePower cp = CalculatePower();
  int x = 3, y = 4;
  print(cp.calPower(x, 3));
  print(cp.calPower(y, 5));
}


// this is follwing the DRY principle as the
// logic is now not repeating!