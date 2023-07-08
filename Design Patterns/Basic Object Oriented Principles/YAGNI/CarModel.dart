// YOU ARE SUPPOSED to write a model class for Car that
// holds name, model , registation no and color
// properties for Parking Stand app

//! BAD

class Car {
  String name,
      model,
      registration_no,
      color,
      chasieNumber,
      ownerName,
      ownerFatherName,
      ownerHomeAdrress;

  Car(
      {required this.chasieNumber,
      required this.color,
      required this.model,
      required this.name,
      required this.ownerFatherName,
      required this.ownerHomeAdrress,
      required this.ownerName,
      required this.registration_no});

  @override
  String toString() {
    return super.toString();
  }
}

//! GOOD

// Naming this class CarA because I need to show
//it in the same file (Car)

class CarA {
  late String name, model, registration_no, color;
  // The below one are unnecessary data members
  // chasieNumber,
  // ownerName,
  // ownerFatherName,
  // ownerHomeAdrress;

  CarA(
      {required this.color,
      required this.model,
      required this.name,
      required this.registration_no});

  @override
  String toString() {
    return super.toString();
  }
}
