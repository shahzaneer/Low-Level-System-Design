import 'employee.c.dart';
import 'employee.dart';

class EmployeeProxy implements EmployeeInterface {
  // Proxy has a intended Object
  Employee employee;

  EmployeeProxy({required this.employee});

  @override
  String create({required String client, required String employeeID}) {
    if (client == "ADMIN") {
      return employee.create(client: client, employeeID: employeeID);
    }
    return "access Denied!";
  }

  @override
  String read({required String client, required String employeeID}) {
    if (client == "ADMIN" || client == "Member") {
      return employee.read(client: client, employeeID: employeeID);
    }
    return "Access Denied";
  }

  @override
  String remove({required String client,required String employeeID}) {
    if (client == "ADMIN") {
      return employee.remove(client: client, employeeID: employeeID);
    }

    return "Access Denied";
  }
}
