abstract class EmployeeInterface {
  String create({required String client, required String employeeID});
  String remove({required String client,required String employeeID});
  String read({required String client,required String employeeID});
}
