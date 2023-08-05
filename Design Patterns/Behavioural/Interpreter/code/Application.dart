import 'andExpression.dart';
import 'expression.dart';
import 'orExpression.dart';
import 'terminal.dart';

class Interpretor {
  static Expression isMale() {
    Expression deepak = new TerminalExpression(data: "Deepak");
    Expression shahzaneer = new TerminalExpression(data: "Shahzaneer");
    return OrExpression(exp_1: deepak, exp_2: shahzaneer);
  }

  static Expression isMarriedWoman() {
    Expression laiba = new TerminalExpression(data: "Laiba");
    Expression married = new TerminalExpression(data: "married");
    return AndExpression(exp_1: laiba, exp_2: married);
  }
}

void main(List<String> args) {
  Expression isMale = Interpretor.isMale();
  Expression isMarriedWoman = Interpretor.isMarriedWoman();

  print(isMale.interpret("Shahzaneer is a Man?"));
  print(isMarriedWoman.interpret("Laiba is a married women now?"));
}
