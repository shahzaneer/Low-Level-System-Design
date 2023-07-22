import 'myIterator.dart';
import 'user.dart';
import 'userManagment.dart';

void main(List<String> args) {
  UserManagement userManagement = UserManagement();
  userManagement
      .addUser(User(name: "Shahzaneer", email: "shah@arbisoft", id: 1));
  userManagement
      .addUser(User(name: "Mahnoor", email: "mahnoor@dexplat", id: 2));
  userManagement
      .addUser(User(name: "zuwanish", email: "zuwanish@dexplat", id: 3));

  MyIterator iterator = userManagement.getIterator();

  while (iterator.hasNext()) {
    print(iterator.next().toString());
  }
}
