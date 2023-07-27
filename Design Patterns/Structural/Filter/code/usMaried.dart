import 'criteria.dart';
import 'person.dart';

class IsMarried implements Criteria {
  @override
  List<Person> meetsCriteria(List<Person> persons) {
    List<Person> married = [];
    for (Person person in persons) {
      if (person.maritalStatus == "MARRIED" ||
          person.maritalStatus == "married") {
        married.add(person);
      }
    }
    return married;
  }
}
