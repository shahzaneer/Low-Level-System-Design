import 'memento.dart';
import 'person.dart';

class Originator {
  Person? person_state;

  Originator();

  void setState(Person person) {
    person_state = person;
  }
  Person getState(){
    return person_state!;
  }

  Memento saveStateToMemento() {
    return Memento(person_state!);
  }

  getStateFromMememto(Memento memento) {
    person_state = memento.getState();
  }
}
