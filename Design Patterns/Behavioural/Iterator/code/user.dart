class User {
  String name, email;
  int id;

  User({
    required this.name,
    required this.email,
    required this.id,
  });

  @override
  String toString() {
    return "ID : $id  Name $name Email: $email";
  }
}
