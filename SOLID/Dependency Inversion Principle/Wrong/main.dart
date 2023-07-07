import 'service.dart';

void main(List<String> args) {
  Service service = Service();
  service.attach();

  // This code cannot be extended as it is depended upon myDBConnection
  // which is the concretion
  // In future if we need to attach to the firebase or any of such services we
  // need to change the service class which is a very bad practice!
}
