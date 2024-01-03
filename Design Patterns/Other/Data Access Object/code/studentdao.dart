import 'student.daoI.dart';
import 'student.dart';

class StudentDAO implements StudentDAOInterface {
  // here students (list will work as intermediate database)
  List<Student> students = [];

  @override
  void addAStudent({required Student student}) {
    students.add(student);
  }

  @override
  void deleteAStudent({required int rollNo}) {
    if (rollNo <= students.length) {
      // finding student
      int? index;
      for (int i = 0; i < students.length; i++) {
        if (students[i].rollNo == rollNo) {
          index = i;
        }
      }
      // removing him
      students.removeAt(index!);

      print("The Student with rollno ${rollNo} was deleted from the DB");
    } else {
      print("The Roll no was not found");
    }
  }

  @override
  List<Student> getAllStudents() {
    return students;
  }

  @override
  void updateAStudent({required int rollNo, required String firstName}) {
    // finding student
    int? index;
    for (int i = 0; i <students.length; i++) {
      if ((students[i].rollNo) == rollNo) {
        index = i;
      }
    }

    // updating it
    students[index!].firstName = firstName;
    // logging it
    print(
        "The Student with rollno ${rollNo}'s firstName is updated as ${firstName} from the DB");
    print("The new Student is ${students[index]}");
  }
}
