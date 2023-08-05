import 'expression.dart';

class TerminalExpression implements Expression {
  String data;

  TerminalExpression({
    required this.data,
  });

  @override
  bool interpret(String context) {
    return context.contains(data);
  }
}
