import 'myIterator.dart';
import 'user.dart';

class UserManagement {
  List<User> users = [];

  void addUser(User user) {
    users.add(user);
  }

  User getUser(int index) {
    return users.elementAt(index);
  }

  MyIterator getIterator() {
    return MyIterator(length: users.length, list: users);
  }  
}
