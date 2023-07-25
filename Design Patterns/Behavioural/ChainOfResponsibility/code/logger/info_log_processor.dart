import 'log_processor.dart';

class InfoLogProcessor extends LogProcessor {
  InfoLogProcessor({required super.nextLogProcessor});

  @override
  void log({required int logLevel, required String message}) {
    if (logLevel == LogProcessor.INFO) {
      print("INFO: $message");
    } else {
      super.log(logLevel: logLevel, message: message);
    }
  }
}
