import 'person.dart';

class Memento {
  Person person;

  Memento(this.person);

  getState() {
    return person;
  }
}
