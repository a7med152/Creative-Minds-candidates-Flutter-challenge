class MyException implements Exception {
  final String messages;
  final int error;
  final String? errorException;
  final dynamic dataErrors;

  MyException( {
    required this.messages,
    required this.error,
    this.errorException,
    this.dataErrors,
  });
}
