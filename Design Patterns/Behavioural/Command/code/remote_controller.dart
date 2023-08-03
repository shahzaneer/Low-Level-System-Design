import 'command.dart';

class RemoteController {
  Command command;
  RemoteController({
    required this.command,
  });

  void setCommand(Command command) {
    this.command = command;
  }

  void pressButton() {
    command.execute();
  }
}
