abstract class ArithmeticExpression {
  int evaluate();
}

class Number extends ArithmeticExpression {
  int value;
  Number({
    required this.value,
  });

  @override
  int evaluate() {
    return value;
  }
}

enum Operation { ADD, SUBTRACT, MULTIPLY, DIVIDE }

// This is the composite class
class Expression implements ArithmeticExpression {
  ArithmeticExpression leftExpression;
  ArithmeticExpression rightExpression;
  Operation operation;

  Expression({
    required this.leftExpression,
    required this.rightExpression,
    required this.operation,
  });
  @override
  int evaluate() {
    int value = 0;
    switch (operation) {
      case Operation.ADD:
        value = leftExpression.evaluate() + rightExpression.evaluate();
      case Operation.SUBTRACT:
        value = leftExpression.evaluate() + rightExpression.evaluate();
      case Operation.MULTIPLY:
        value = leftExpression.evaluate() * rightExpression.evaluate();
      case Operation.DIVIDE:
        value = leftExpression.evaluate() ~/ rightExpression.evaluate();
    }
    return value;
  }
}

void main(List<String> args) {
  // consider we want to calculate 2*(7+1)
  Number two = Number(value: 2);
  Number seven = Number(value: 7);
  Number one = Number(value: 1);

  Expression mainExpression = Expression(
      leftExpression: two,
      rightExpression: Expression(
          leftExpression: seven,
          rightExpression: one,
          operation: Operation.ADD),
      operation: Operation.MULTIPLY);

  print(mainExpression.evaluate());
  // it should return 16 and it do!
}
