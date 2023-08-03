class Person {
  String name;
  String domain;
  String email;

  Person({
    required this.name,
    required this.domain,
    required this.email,
  });


  @override
  String toString() {
    return "Name: $name Domain: $domain Email: $email";
  }

  Person copyWith({
    String? name,
    String? domain,
    String? email,
  }) {
    return Person(
      name: name ?? this.name,
      domain: domain ?? this.domain,
      email: email ?? this.email,
    );
  }
}
