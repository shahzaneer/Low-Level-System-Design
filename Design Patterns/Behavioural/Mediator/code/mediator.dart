import 'user.dart';

class Mediator {
  static void sendMessage(User user, String message) {
    print("[${DateTime.now()} : from ${user.name}] : $message ");
  }
}
