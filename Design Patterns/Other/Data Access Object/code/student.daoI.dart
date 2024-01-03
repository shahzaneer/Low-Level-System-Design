import 'student.dart';

abstract class StudentDAOInterface {
  List<Student> getAllStudents();
  void updateAStudent({required int rollNo, required String firstName});
  void deleteAStudent({required int rollNo});
  void addAStudent({required Student student});
}
