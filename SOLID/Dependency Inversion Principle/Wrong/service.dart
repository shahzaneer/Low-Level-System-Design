import 'myDBConnection.dart';

class Service {
  MyDBConnection? connection;

  void attach() {
    connection!.connect();
  }
}
