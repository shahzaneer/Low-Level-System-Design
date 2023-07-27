import 'criteria.dart';
import 'person.dart';

class IsFemale implements Criteria {
  @override
  List<Person> meetsCriteria(List<Person> persons) {
    List<Person> females = [];
    for (Person person in persons) {
      if (person.gender == "FEMALE" || person.gender == "female") {
        females.add(person);
      }
    }
    return females;
  }
}
