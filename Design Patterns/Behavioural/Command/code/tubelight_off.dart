import 'command.dart';
import 'tubelight.dart';

class TubeLightOffCommand implements Command {
  TubeLight tubeLight;

  TubeLightOffCommand({
    required this.tubeLight,
  });

  @override
  void execute() {
    tubeLight.offTubeLight();
  }
}
