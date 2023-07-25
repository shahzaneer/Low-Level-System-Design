import 'log_processor.dart';

class ErrorLogProcessor extends LogProcessor {
  ErrorLogProcessor({required super.nextLogProcessor});

  @override
  void log({required int logLevel, required String message}) {
    if (logLevel == LogProcessor.ERROR) {
      print("ERROR : $message");
    } else {
      super.log(logLevel: logLevel, message: message);
    }
  }
}
