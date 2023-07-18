// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'observer.dart';

class Subscriber extends Observer {
  String name;

  Subscriber({
    required this.name,
  });

  @override
  void notified() {
    print("hello $name, you subscribed to the channel");
  }
}
