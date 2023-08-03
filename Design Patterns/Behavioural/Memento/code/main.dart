import 'caretaker.dart';
import 'originator.dart';
import 'person.dart';

void main(List<String> args) {
  Originator originator = Originator();
  // originator is responsible for making  a state and saving into memento
  CareTaker careTaker = CareTaker();
  // Caretaker helps us to keep track of state by maintaining a list
  Person shahzaneer = Person(
    name: "shahzaneer",
    domain: "mobile app dev",
    email: 'shahism01@gmail.com',
  );
  originator.setState(shahzaneer);
  careTaker.add(originator.saveStateToMemento());

  // ! I made Prototype Constructor here which is not
  //! the original concept of Memento
  //! as we create a new and different object However it is working
  // ! Will solve it later In shaa Allah

  // now I changed the object shahzaneer
  // As I updated my email address
  shahzaneer = shahzaneer.copyWith(email: "shahzaneer.dev@gmail.com");
  originator.setState(shahzaneer);
  careTaker.add(originator.saveStateToMemento());

  // Now I want to set my domain to a business person as I always aspire to!
  shahzaneer = shahzaneer.copyWith(domain: "Business-Man");
  originator.setState(shahzaneer);
  careTaker.add(originator.saveStateToMemento());

  // Now I want to see the state change and keep their track
  // I can use CareTakerList (MementoList in this case)

  print("Current State of Object Shahzaneer : ${originator.getState()}");
  originator.getStateFromMememto(careTaker.get(0));
  print("First Saved state of Object Shahzaneer : ${originator.getState()}");
  originator.getStateFromMememto(careTaker.get(1));
  print("Second Saved State of Object Shahzaneer : ${originator.getState()}");
  originator.getStateFromMememto(careTaker.get(2));
  print(
      "Third/Current Saved State of Object Shahzaneer : ${originator.getState()}");
}
