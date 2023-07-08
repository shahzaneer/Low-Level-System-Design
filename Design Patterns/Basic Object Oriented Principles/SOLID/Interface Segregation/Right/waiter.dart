import 'waiter_interface.dart';

class Waiter implements Waiting {
  @override
  void serveFood() {
    print("serve Food");
  }
}
