import 'expression.dart';

class OrExpression implements Expression {
  Expression exp_1;
  Expression exp_2;

  OrExpression({
    required this.exp_1,
    required this.exp_2,
  });

  @override
  bool interpret(String context) {
    return (exp_1.interpret(context) || exp_2.interpret(context));
  }
}
