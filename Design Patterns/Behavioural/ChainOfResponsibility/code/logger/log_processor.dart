abstract class LogProcessor {
  static int INFO = 1;
  static int DEBUG = 2;
  static int ERROR = 3;

  LogProcessor? nextLogProcessor;

  LogProcessor({required this.nextLogProcessor});

  void log({required int logLevel, required String message}) {
    if (nextLogProcessor != null) {
      nextLogProcessor!.log(logLevel: logLevel, message: message);
    }
  }
}
