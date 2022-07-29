class ExceptUser implements Exception {
  final String? message;

  ExceptUser(this.message);

  @override
  String toString() => '$message)';
}
