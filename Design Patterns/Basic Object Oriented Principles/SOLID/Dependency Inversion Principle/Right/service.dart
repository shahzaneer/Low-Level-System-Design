import 'connectionInterface.dart';

class Service {
  ConnectionInterface? connection;

  void attach() {
    connection!.connect();
  }
}
