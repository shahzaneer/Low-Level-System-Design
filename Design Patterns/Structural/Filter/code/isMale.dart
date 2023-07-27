import 'criteria.dart';
import 'person.dart';

class IsMale implements Criteria {
  @override
  List<Person> meetsCriteria(List<Person> persons) {
    List<Person> males = [];
    for (Person person in persons) {
      if (person.gender == "MALE" || person.gender == "male") {
        males.add(person);
      }
    }
    return males;
  }
}
