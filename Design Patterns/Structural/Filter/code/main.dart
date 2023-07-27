import 'andCriteria.dart';
import 'criteria.dart';
import 'isFemale.dart';
import 'isMale.dart';
import 'isSingle.dart';
// import 'or_criteria.dart';
import 'person.dart';
import 'usMaried.dart';

void main(List<String> args) {
  List<Person> persons = [
    Person(name: "Shahzaneer", gender: "male", maritalStatus: "single"),
    Person(name: "Deepak", gender: "male", maritalStatus: "single"),
    Person(name: "Fawad", gender: "male", maritalStatus: "single"),
    Person(name: "Anees", gender: "male", maritalStatus: "single"),
    Person(name: "Anas", gender: "male", maritalStatus: "married"),
    Person(name: "Raheem", gender: "male", maritalStatus: "married"),
    Person(name: "Rabbiya", gender: "female", maritalStatus: "single"),
    Person(name: "Laiba Khan", gender: "female", maritalStatus: "married"),
    Person(name: "Aouzeerah", gender: "female", maritalStatus: "married")
  ];

  List<Criteria> criterionForBachelorBoys = [
    IsMale(),
    IsSingle(),
  ];
  Criteria bachelorCriteria = AndCriteria(criterion: criterionForBachelorBoys);

  List<Person> bachelorBoys = bachelorCriteria.meetsCriteria(persons);
  print(bachelorBoys);

  // Now filter the married girls
  print(
      AndCriteria(criterion: [IsFemale(), IsMarried()]).meetsCriteria(persons));

//! Not Implemented yet
  // Now filter if the person is female or a single boy
  // print(OrCriteria(criterion: [IsFemale(), IsSingle()]).meetsCriteria(persons));
}
