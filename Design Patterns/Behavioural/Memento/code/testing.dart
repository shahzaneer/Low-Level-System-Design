import 'person.dart';

void main(List<String> args) {
  List<Person> persons = [];
  Person person1 = Person(
    name: "Shahzaneer",
    domain: "SWE",
    email: "shahzaneer.dev@gmail.com",
  );
  persons.add(person1);

  print(persons);
  person1.email = "shahism01@gmail.com";
  print(persons);
}

// Custom Object is passed by reference here...
// it is not passed by value.. this was the issue