class SearchFailed implements Exception {
  final String _message;

  SearchFailed(String message) : _message = message;

  @override
  String toString() => 'SearchFailed(message: $_message)';
}
