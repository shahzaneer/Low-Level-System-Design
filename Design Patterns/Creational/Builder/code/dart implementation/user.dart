// Dart has some excellent syntax that allows us to skip the creation
//of builders and prevents us from getting into constructor hell.
// One cool thing about Dart is that instance variables
//implement implicit getters and setters.
//If the instances are final, setters don't get generated.

// Dart has an excellent feature called cascade notation that
// allows you to invoke getters, setters,
// and methods on object instances to instantiate them:

class User {
  final String? _name, _id, _email;
  // initializer list alows you to initialize the final variables
  // the body of the constructor will not allow you to do so
  User._builder(UserBuilder userBuilder)
      : _email = userBuilder.email,
        _id = userBuilder.id,
        _name = userBuilder.name;

  @override
  String toString() {
    return "$_name $_id $_email";
  }
}

class UserBuilder {
  String? name, id, email;

  User build() {
    return new User._builder(this);
  }
}

void main(List<String> args) {
  // User u1 = new User()
  //   ..email = "shahzaneer.ahmed@arbisoft.com"
  //   ..id = "I93"
  //   ..name = "Shahzaneer";

  // print(u1.email);
  //! now you can go home its done because its Dart
// getter setter implicitly bn jatay hain
//aur cascade notation apko har value ko set krne ki option deti hai
// so why need a builder as we already have builder design pattern implemented>>>

// but it is violating the principle of immutability as you can still change the attributes of objects
  // u1.email = "shahzaneer.dev@gmail.com";

  // print(u1.email);

  User u1 = (UserBuilder()
        ..name = "ahsan"
        ..id = "10"
        ..email = "ahsan@arbisoft")
      .build();
  //  now the second principle of builder method i.e. immutability is also covered ✔

  print(u1);
}
