abstract class OperationStrategy {
  int doOperation(int num1, int num2);
}

class AdditionStrategy implements OperationStrategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 + num2;
  }
}

class MultiplicationStrategy implements OperationStrategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 * num2;
  }
}

class DivisionStrategy implements OperationStrategy {
  @override
  int doOperation(int num1, int num2) {
    return (num1 / num2).toInt();
  }
}

// Now making out caller classes

class AdditionOperation extends AdditionStrategy {}

class DoAddition extends AdditionStrategy {}

class MultilicationOperation extends MultiplicationStrategy {}

class DoMultiplication extends MultiplicationStrategy {}

class DivisionOperation extends DivisionStrategy {}

class DoDivision extends DivisionStrategy {}

class Context {
  OperationStrategy operation;
  Context(this.operation);

  int applyOperation(int num1, int num2) {
    return operation.doOperation(num1, num2);
  }
}

void main() {
  Context c1 = new Context(new DoAddition());
  Context c2 = new Context(new DoMultiplication());
  Context c3 = new Context(new DoDivision());

  print("3+3:  ${c1.applyOperation(3, 3)}");
  print("3*3:  ${c2.applyOperation(3, 3)}");
  print("3/3:  ${c3.applyOperation(3, 3)}");
}


// Here abstract Operation is our strategy which helps us to specify a method 
// jiski alag alag implementation hoskti hai depending upon hmain kahan kya chahiay
// plus there is no duplication of code as well