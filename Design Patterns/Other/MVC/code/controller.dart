import 'model.dart';
import 'view.dart';

class Controller {
  View _studentView;
  Student _studentModel;

  Controller(this._studentView, this._studentModel);

  void setStudentName(String studentName) {
    _studentModel.name = studentName;
  }

  void setStudentRollNo(int rollNo) {
    _studentModel.rollNo = rollNo;
  }

  int getStudentRollNo() {
    return _studentModel.rollNo;
  }

  String getStudentName() {
    return _studentModel.name;
  }

  void updateView() {
    _studentView.viewStudentDetails(_studentModel.rollNo, _studentModel.name);
  }
}


// Controller is commanding the interaction between VIEW AND MODEL