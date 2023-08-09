import 'mediator.dart';

class User {
  String name;

  User({required this.name});

  void sendMessage(String msg){
    Mediator.sendMessage(this, msg);
  }
}
