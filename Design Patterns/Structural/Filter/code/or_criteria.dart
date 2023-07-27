// import 'criteria.dart';
// import 'person.dart';

// class OrCriteria implements Criteria {
//   List<Criteria> criterion;

//   OrCriteria({
//     required this.criterion,
//   });

//   @override
//   List<Person> meetsCriteria(List<Person> persons) {
//     List<Person> matchedCriteriaPersons = [];
//     if (criterion.isNotEmpty) {
//       // Logic
//       for (Criteria criteria in criterion) {
//         List<Person> currentCriteriaPersons = criteria.meetsCriteria(persons);
//         if (persons.contains(currentCriteriaPersons) &&
//             !matchedCriteriaPersons.contains(currentCriteriaPersons)) {
//           matchedCriteriaPersons = currentCriteriaPersons;
//         }
//       }
//       return matchedCriteriaPersons;
//     } else {
//       return persons;
//     }
//   }
// }
