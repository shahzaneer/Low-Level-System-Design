//! value Class or actual Model Class

class Student {
  int rollNo;
  String firstName;
  String? secondName;
  String? registrationNo;
  int? semester;

  Student({
    required this.rollNo,
    required this.firstName,
  });

  @override
  String toString() {
    return super.toString();
  }

  
}
