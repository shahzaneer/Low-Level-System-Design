import 'firebase.dart';
// import 'mariaDB.dart';
// import 'myDBConnection.dart';
import 'service.dart';

void main(List<String> args) {
  Service service = Service();

  service.connection = Firebase();
  // service.connection = MyDBConnection();
  // service.connection = MariaDB();
  service.attach();

  // YUN high level module that is Service is not depending upon the
  // low level Modules which are firebase,MariaDB,myDBConnection etc!
}
