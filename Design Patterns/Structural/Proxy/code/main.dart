import 'employee.c.dart';
import 'employee.dart';
import 'employee.p.dart';

void main(List<String> args) {
  EmployeeInterface emp = new EmployeeProxy(employee: Employee());

  print(emp.read(client: "Member", employeeID: "121"));
}


// EmployeeProxy handled the restriction access of main Object that is employee