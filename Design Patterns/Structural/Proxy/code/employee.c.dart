import 'employee.dart';

class Employee implements EmployeeInterface {
  @override
  String create({required String client, required String employeeID}) {
    return "Employee ID created : $employeeID";
  }

  @override
  String read({required String client, required String employeeID}) {
    return "Employee ID read : $employeeID";
  }

  @override
  String remove({required String client, required String employeeID}) {
    return "Employee ID removed : $employeeID";
  }
}
