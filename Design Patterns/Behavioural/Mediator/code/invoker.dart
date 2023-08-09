import 'user.dart';

void main(List<String> args) {
  User shahzaneer = new User(name: "Shahzaneer");
  User deepak = new User(name: "Deepak");

  shahzaneer.sendMessage("Hello Deepak Khatri");
  deepak.sendMessage("hello! Im depressed");

  // In this way direct communication is
  // restricted and indirect communication is done
}
