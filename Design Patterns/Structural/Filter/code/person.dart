class Person {
  String name;
  String gender;
  String maritalStatus;

  Person({
    required this.name,
    required this.gender,
    required this.maritalStatus,
  });

  @override
  String toString() {
    return "Name : $name Gender : $gender Marital Status : $maritalStatus\n";
  }
}
