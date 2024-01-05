import 'controller.dart';
import 'model.dart';
import 'view.dart';

void main(List<String> args) {
  // Model (Objects)
  Student s1 = Student(rollNo: 1, name: "Mariam Farooqi");
  Student s2 = Student(rollNo: 2, name: "Abdullah Minhas");
  Student s3 = Student(rollNo: 3, name: "Khushi Muhammad");
// View
  View view = View();

  // Controller
  Controller c_s1 = Controller(view, s1);
  // Controller c_s2 = Controller(view, s2);
  // Controller c_s3 = Controller(view, s3);

  print(c_s1.getStudentName());
  c_s1.setStudentName("Inmbsat Binte Habib");
  print(c_s1.getStudentName());

}
