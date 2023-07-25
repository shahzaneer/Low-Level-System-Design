import 'log_processor.dart';

class DebugLogProcessor extends LogProcessor {
  DebugLogProcessor({required super.nextLogProcessor});

  @override
  void log({required int logLevel, required String message}) {
    if (logLevel == LogProcessor.DEBUG) {
      print("DEBUG : $message");
    } else {
      super.log(logLevel: logLevel, message: message);
    }
  }
}
