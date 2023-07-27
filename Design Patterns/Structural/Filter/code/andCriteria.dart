import 'criteria.dart';
import 'person.dart';

class AndCriteria implements Criteria {
  List<Criteria> criterion;
  AndCriteria({required this.criterion});

  @override
  List<Person> meetsCriteria(List<Person> persons) {
    if (criterion.isNotEmpty) {
      List<Person> matchedCriteriaPersons = [];
      matchedCriteriaPersons = criterion[0].meetsCriteria(persons);

      for (Criteria criteria in criterion) {
        matchedCriteriaPersons = criteria.meetsCriteria(matchedCriteriaPersons);
      }

      return matchedCriteriaPersons;
    }
    return persons;
  }
}
