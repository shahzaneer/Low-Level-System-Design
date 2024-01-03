import 'student.dart';
import 'studentdao.dart';

void main(List<String> args) {
  // Creating Database
  StudentDAO studentDao = StudentDAO();

// Adding two students
  studentDao.addAStudent(
    student: Student(rollNo: 1, firstName: "Shahzaneer Ahmed"),
  );

  studentDao.addAStudent(
    student: Student(rollNo: 2, firstName: "Imran Khan"),
  );
  print("Here we go");

  // Now removing one student
  studentDao.deleteAStudent(rollNo: 2);
  print(studentDao.getAllStudents());
  // Now updating one student
  studentDao.updateAStudent(rollNo: 1, firstName: "Shahzaneer Ahmed Qureshi");
  print(studentDao.getAllStudents());
}
