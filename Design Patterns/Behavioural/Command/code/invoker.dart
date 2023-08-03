import 'remote_controller.dart';
import 'tubelight.dart';
import 'tubelight_off.dart';
import 'tubelight_on.dart';

void main(List<String> args) {
  // main function is actually the invoker method ..
  TubeLight tubeLight = TubeLight();
  TubelightOnCommand tubelightOnCommand =
      TubelightOnCommand(tubeLight: tubeLight);
  RemoteController remoteController =
      RemoteController(command: tubelightOnCommand);

  remoteController.pressButton();

  // Now changing the command the same button will do the opposite
  remoteController.setCommand(TubeLightOffCommand(tubeLight: tubeLight));
  remoteController.pressButton();
}
