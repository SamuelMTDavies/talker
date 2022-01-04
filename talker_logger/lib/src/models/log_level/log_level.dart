enum LogLevel {
  /// Errors
  error,
  debug,
  critical,
  warning,
  verbose,

  /// Messages
  info,
  fine,
  good,
}

final logLevelPriorityList = [
  LogLevel.critical,
  LogLevel.error,
  LogLevel.warning,
  LogLevel.debug,
  LogLevel.verbose,
  LogLevel.info,
  LogLevel.fine,
  LogLevel.good
];

extension ToTitle on LogLevel? {
  String get title {
    switch (this) {
      case LogLevel.critical:
        return 'CRITICAL';
      case LogLevel.error:
        return 'ERROR';
      case LogLevel.fine:
        return 'FINE';
      case LogLevel.warning:
        return 'WARNING';
      case LogLevel.verbose:
        return 'VERBOSE';
      case LogLevel.info:
        return 'INFO';
      case LogLevel.good:
        return 'GOOD';
      case LogLevel.debug:
      default:
        return 'LOG';
    }
  }
}