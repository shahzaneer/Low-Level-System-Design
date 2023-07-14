class Operation {
  // We made a concrete class for Operations
  // by default it is doing adding for performing actions
  int performOperation(int num1, int num2) {
    return num1 + num2;
  }
}

class AddOperation extends Operation {}

class DoAddition extends Operation {}

class MultiplyOperation extends Operation {
  @override
  int performOperation(int num1, int num2) {
    return num1 * num2;
  }
}

class DoMultiplication extends Operation {
  // Duplicated code
  @override
  int performOperation(int num1, int num2) {
    return num1 * num2;
  }
}

class DivisonOperation extends Operation {
  @override
  int performOperation(int num1, int num2) {
    return (num1 / num2).toInt();
  }
}

class DoDivison extends Operation {
  // Duplicated Code
  @override
  int performOperation(int num1, int num2) {
    return (num1 / num2).toInt();
  }
}

void main(List<String> args) {
  Operation op1 = new DoAddition();
  Operation op2 = new DoMultiplication();
  Operation op3 = new DoDivison();

  print(op1.performOperation(2, 2));
  print(op2.performOperation(2, 2));
  print(op3.performOperation(2, 2));
}

// In this way we are repeating the duplicate code when two child classes
// needs the same functionality we have to write code for it again..
