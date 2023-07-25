import 'debug_log_processor.dart';
import 'error_log_processor.dart';
import 'info_log_processor.dart';
import 'log_processor.dart';

void main(List<String> args) {
  LogProcessor logging = InfoLogProcessor(
    nextLogProcessor: DebugLogProcessor(
      nextLogProcessor: ErrorLogProcessor(nextLogProcessor: null),
    ),
  );

  logging.log(logLevel: 3, message: "Samasya hogyi");
}


// in this way we can handle the chain of responsibility
// the object which can fulfill the requirement will complete its job 
// the object which is not able to do the job will 
//transfer the object to its next