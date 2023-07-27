import 'criteria.dart';
import 'person.dart';

class IsSingle implements Criteria {
  @override
  List<Person> meetsCriteria(List<Person> persons) {
    List<Person> singles = [];
    for (Person person in persons) {
      if (person.maritalStatus == "SINGLE" ||
          person.maritalStatus == "single") {
        singles.add(person);
      }
    }
    return singles;
  }
}
