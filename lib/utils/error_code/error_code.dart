class ErrorCode implements Exception {
  final String code;
  final String message;
  final String? uiMessage;

  ErrorCode({required this.code, required this.message, this.uiMessage});

  @override
  String toString() => "$code: $message";
}

class ErrorNetwork {
  static const String errorAuth = "ErrNet-1";
  static const String errorTimeout = "ErrNet-2";
  static const String errorInternalServer = "ErrNet-3";
  static const String errorNotFound = "ErrNet-4";
  static const String errorBadRequest = "ErrNet-5";
  static const String errorNetworkDefault = "ErrNet-Default";
}

class ErrorUnknown {
  static const String errorUnknownError = "Err-0";
}

class ErrorLocal {
  static const String errorAuth = "ErrLocal-1";
  static const String errorTimeout = "ErrLocal-2";
  static const String errorInternalServer = "ErrLocal-3";
  static const String errorNotFound = "ErrLocal-4";
  static const String errorNetworkDefault = "ErrLocal-Default";
}
