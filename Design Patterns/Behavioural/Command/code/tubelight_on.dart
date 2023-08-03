import 'command.dart';
import 'tubelight.dart';

class TubelightOnCommand implements Command {
  TubeLight tubeLight;

  TubelightOnCommand({
    required this.tubeLight,
  });

  @override
  void execute() {
    tubeLight.onTubeLight();
  }
}
