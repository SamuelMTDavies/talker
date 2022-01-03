import 'package:talker_error_handler/talker_error_handler.dart';

const kDefaultErrorHandlerSettings = ErrorHandlerSettings();
const kDefaultRegisteredErrors = {
  BaseErrorContainer: ErrorLevel.debug,
};

class ErrorHandlerSettings {
  const ErrorHandlerSettings({
    this.useHistory = true,
    this.maxHistoryEntries = 200,
  });

  final bool useHistory;
  final int maxHistoryEntries;
}