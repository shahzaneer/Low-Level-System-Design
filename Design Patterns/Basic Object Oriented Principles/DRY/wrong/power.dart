// Program to calculate x^3 and  y^5
// for given inputs x and y

void main(List<String> args) {
  int x = 3;
  int y = 4;

// for x^3
  int ans1 = 1;
  for (int i = 0; i < 3; i++) {
    ans1 = ans1 * x;
  }

  // for y^5
  int ans2 = 1;
  for (int i = 0; i < 5; i++) {
    ans2 = ans2 * y;
  }

  print("x is $ans1");
  print("y is $ans2");
}


// it is not following DRY as we repeated the same logic twice
// logic -> to calculate power (the for loop here)