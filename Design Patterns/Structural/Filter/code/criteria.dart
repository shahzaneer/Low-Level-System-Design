import 'person.dart';

abstract class Criteria {
  List<Person> meetsCriteria(List<Person> persons);
}
